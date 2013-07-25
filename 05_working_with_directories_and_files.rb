# Directories

Dir.pwd # Tells what folder your ruby script is in

Dir.chdir "Documents" # Changes the working directory using realative path
Dir.chdir "/users/andrew/Documents" # uses absolute path to change the working directory

all_text_files = Dir.glob "*.txt"

some_dir = Dir.open "/users/andrew" # Creates an istance of the Dir class

some_dir.each do |file| # use each method on Dir objects to iterate over each file or director thats inside it
  #do something
end

some_dir.entries # this returns an array of the contents of the directory


# Files

File.absolute_path "plans.txt" # returns the absolute path to the plans. => "/users/andrew/Documents/palns.txt" 

File.basename("/users/andrew/Documents/plans.txt") # returns the realative path => "plans.txt"

File.delete "code.rb" # deletes the file you pass into (i.e. code.rb)

Dir.open(Dir.pwd).each do |filename|
  next if File.directory? filename #next skips to the next iteration if statement is true. Doesn't proccess the file
  #otherwise process file
end

# File.open takes a second argument that could be:
# r: read-only
# w: write only
# w+: read and write only
# a: write only
# Side note: remember this: the way a file works, once a line has been read, it doens’t show up again;
#  you’re working your way through the file. At any point, you can use the f.rewind method to go back to the beginning of the file.

f = File.open("sample.txt", "r") # assume this file for the next couple of snippets
f.read # returns the file

f.rewind #back at the beginning
f.readline # someing at line 1
f.readline # something at line 2
f.readline # something at line 3

f.rewind
f.readlines # returns an array in which the lines are entries

f.rewind
f.each do |line| #puts each line, one by one
  puts line
end

# writing in files
# For writing, you’ve got two options: write and puts. The main difference is that puts adds a line break to the end of your string, while write does not.
f = File.open("file.txt", "w+")
f.puts "first line"
f.write "second"
f.write "line"
f.rewind
f.readlines # => [first line\n", "second line"


