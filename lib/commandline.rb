require 'optparse'
require 'ostruct'

class CommandLine
  def self.parse(args)
    options = OpenStruct.new
    options.library_folder = ""
    options.packages = []

    opts = OptionParser.new do |opts|
      opts.banner = "Usage: rocksalt [options] package_name1 package_name2"
      opts.separator ""
      opts.separator "Specific options:"
      
      opts.on("-l", "--lib LIBRARY_FOLDER", "Require the LIBRARY before executing your script") do |lib|
      options.library_folder = lib
      
      opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
      end
    end

    opts.parse!(args)
    options
  end
end
