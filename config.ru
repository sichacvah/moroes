$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'moroes'
require 'dotenv'
Dotenv.load


Moroes::Bot.run
