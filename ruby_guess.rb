def high_or_low
  loop do
    puts "Is that guess (1) too high, (2) too low, or (3) just right? Enter 1, 2, or 3."
    response = gets.chomp.strip.to_i
    if [1,2,3].include?(response)
      return response
    end
  end
end

puts "Think of a number from 1 to 100.  I will try to guess it."
puts "Ready?"
gets
result = 0
guess = 0
upper = 101
lower = 1
7.times do
  guess = ( upper + lower) / 2
  puts "My guess is #{guess}."
  result = high_or_low
  if result == 3
    break
  elsif result == 1
    upper = guess
  else
    lower = guess
  end
end
if result == 3
  puts "The correct answer is #{guess}"
else
  puts "Someone is not being honest!"
end
