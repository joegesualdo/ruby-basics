# WHAT ARE GEMS

# A ruby gem is a library or plug-in. It's functionality that your'll install to fill a specific need

# INSTALLING THE RUBYGEMS LIBRARY

# Need to install RubyGems library before we can install and use gems. Ruby 1.9 has RubyGems build in
# Do you have it installed? Run gem -v to find out.
# To update gems run 'gem update --system'


# INSTALLING A GEM

# gem isntall GEM_NAME  This installs the gem on your system

gem install maruku
gem install aws-s3

# USING GEMS

# Some gems are stand-along ruby programs that your run from the command line (i.e. Rails gem)
# Other gems thay you'll only use from inside project of your own.
# If you want to use a gem from within your project, youll have to require it first

require 'rubygems' #only necessary on Ruby 1.8
require 'aws/s3' # the S3 gem

# ruby doesnt load everything by deafult, so you can use require to load extra libraries you want to use

# some gems do both; can run from command line as well as use inside your project
# maraku is an example of a gem you can use both ways

maruku doc.markdown # This will convert Markdown to HTML in the command line

# Maruku within a file:
require 'maruku'

str = "#This is a title\n\n* some\n* list\n* items"
md = Maruku.new(str)
md.to_html_document


# USING BUNDLER

# Once you build a project, you might want to share it, or use it on another computer.
# However, anyone else who runs it will need to have all the right gems installed.
# Now, you can make the process of installing them easy with a project called Bundler.

# First of all, Bundler is a gem itself, which can be installed by running:
gem install bundler

# Then in the root of your project, create a file named Gemfile.
# Gemfile is where you declare what gems you need for this project
# The first line(s) of your Gemfile will tell Bundler where to get your gems.
# Gems live in online repositories, so it will need to know where to get them.
# Most of the time, just using rubygems.org as your source will be sufficient, but you can have multiple sources if you want.

source "http://rubygems.org"

# Then you list your gems:
gem "rails", "3.0.1"
gem "maruku"
gem "aws-s3", :require => "aws/s3"

# If you’ve got a lot of gems, you can use Bundler to require them all in your code. Just do this:
require 'bundler/setup'
Bundler.require(:defualt)
