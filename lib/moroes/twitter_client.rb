module Moroes
  module TwitterClient
    def self.client
      @client
    end

    def self.configure(opts = {}, &block)
      @client = Twitter::Rest::Client.new(opts, &block)
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
