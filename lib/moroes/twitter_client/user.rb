module Moroes
  module TwitterClient
    module User
      def fields
        [
          { title: 'Username', value: name, short: false },
          { title: 'Description', value: description, short: false },
        ]
      end
    end
  end
end
