#!/usr/bin/ruby -w 

require 'fileutils'
# Copy the assets into RAILS_ROOT/public/
RAILS_ROOT = File.join(File.dirname(__FILE__), '../../')
FileUtils.cp_r( 'public/.',RAILS_ROOT, :verbose => true)

# Show the README text file
#puts IO.read(File.join(File.dirname(__FILE__), 'README'))
