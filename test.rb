#!/usr/bin/env ruby

require 'optparse'

# Default name
name = "World"

# Parse command line arguments
OptionParser.new do |opts|
  opts.banner = "Usage: #{$0} [options]"
  
  opts.on("-n", "--name NAME", "Name to greet (default: World)") do |n|
    name = n
  end
  
  opts.on("-h", "--help", "Show this help message") do
    puts opts
    exit
  end
end.parse!

puts "Hello, #{name}!"