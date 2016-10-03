module Moroes
  module Commands
    class WhoIs < SlackRubyBot::Commands::Base
      command 'whois'

      def self.call(client, data, _match)
        result = Moroes::TwitterClient.user(_match[:expression]) if _match[:expression]
        result.extend(Moroes::TwitterClient::User)
        client.say(channel: data.channel, text: 'awdawd', attachments: result.fields.to_json)
      end
    end
  end
end
