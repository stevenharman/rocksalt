require 'commandline'

module RockSalt
	
  class DropSpreader
    def initialize()
      opts = Commandline.parse
      puts opts
    end
  end
	
end