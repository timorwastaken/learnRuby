#!/usr/bin/env ruby

filename = ARGV.first

prompt = "> "
txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()

puts "I'll also ask you to type it again: "
print prompt
file_again = STDIN.gets.chomp()

if File.exist?(file_again)
  txt_again = File.open(file_again)
  puts txt_again.read()
  txt_again.close
else
  puts "Sorry pal file does not exist"
end


txt.close
