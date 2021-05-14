require "colorize"
while (true)
  puts "Yes: Would you like to handle a file?\nNo: Cd into, or out of something?\n[y/n]".colorize.fore(:green)
  file = gets
  if (file == "y")
    puts "What file are we handling?"
    file = gets
    if (File.exists?("#{file}") == true)
      if(File.file?("#{file}")) 
        puts "Is this your file?"
        icon = "📝"
        puts "#{icon} : #{file}\n[y/n]"
        isFile = gets
        if (isFile == "y")
          puts "What would you like to do to this file?"
          # Put the handling file function here
        elsif (isFile == "n")
          puts "Ok! Lets see if we can get this file next time!"
        end
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
  elsif (file == "n")
    puts "What are we cd'ing into?"
    file = gets
    Dir.cd("#{file}")
  else
    puts "What did you type into me?"
  end
end

