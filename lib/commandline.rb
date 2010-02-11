require 'optparse'
require 'ostruct'

class CommandLine
  def self.parse(args)
  	
  	#default values
    options = OpenStruct.new
    options.library = ""

    opts = OptionParser.new do |opts|
      opts.banner = "Usage: rocksalt [options] package_name1 package_name2"
      opts.separator ""
      opts.separator "Specific options:"
      
      opts.on("-l", "--lib [LIB_FOLDER]", "The root folder to copy your packages into") do |lib|
        options.library = lib
      end #lib
      
      opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
      end #help
    end #opts

    opts.parse!(args)
    
    #get the package list
    options.packages = ARGV
    
    options
  end # parse
end #commandline
