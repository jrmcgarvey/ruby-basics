words = []
loop do
  puts "Enter a word, or just press enter to quit."
  s = gets.chomp
  if s == ""
    break
  end
  words << s
end
words = words.sort
puts "The sorted list is #{words}"
