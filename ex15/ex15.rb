#!/usr/bin/env ruby

filename = ARGV.first

prompt = "> "
txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()

puts "I'll also ask you to type it again: "
print prompt
file_again = STDIN.gets.chomp()

if File.exists?(file_again)
  txt_again = File.open(file_again)
end

puts txt_again.read
