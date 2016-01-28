#! /usr/bin/env ruby
#divide.rb

$DEBUG = (ARGV[0] == "--debug")

numerator = rand(100)
denominator = rand(10)
$stderr.puts "Dividing #{numerator} by #{denominator}" if $DEBUG
puts numerator / denominator