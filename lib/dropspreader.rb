module RockSalt
	
  class DropSpreader
    def self.run()
      opts = CommandLine.parse(ARGV)
      
      opts.packages.each do |pkg|
      	output_dir = "#{opts.library}/#{pkg}"
        puts "Copying Packages Contents From '#{pkg}' To '#{output_dir}' ..."
  	  end
    end
  end
	
end
