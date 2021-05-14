require "colorize"
puts "What file are we handling??".colorize.fore(:red)
file = gets
if (File.exists?("#{file}") == true)
  if(File.file?("#{file}")) 
    puts "file exists"
  else 
      puts "That is a dir, would I like to cd into it?\n[y/n]"
      cdinto = gets
      if (cdinto == "y")
        Dir.cd("#{file}")
      elsif (cdinto == "n")
        puts "Ok then!"
      else
        puts "Uhhh, what did you put into the input?"
      end

  end
else 
  puts "We couldn't find the file you were looking for! But here are the files we could find: ".colorize.fore(:red)
  system("ls -la")
end
