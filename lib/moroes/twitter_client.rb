require 'twitter'
require 'moroes/twitter_client/user'

module Moroes
  module TwitterClient
    class  << self
      def client
        @client
      end

      def configure(opts = {}, &block)
        @client = Twitter::REST::Client.new(opts, &block)
      end

      def method_missing(method_sym, *arguments, &block)
        if @client.respond_to?(method_sym)
          @client.send(method_sym, arguments, &block)
        else
          super
        end
      end
    end
  end
end
