secret = rand(100) + 1
guess = -1
while guess != secret
  puts "Enter your guess, a number from 1 to 100"
  guess = gets.chomp.strip.to_i
  if (guess<1 || guess > 100)
    puts "That's not a valid guess."
#  elsif guess==secret
#    puts "You guessed the right number"
#    break
  elsif guess > secret + 10
    puts "Your guess is way too high."
  elsif guess < secret - 10
    puts "Your guess is way too low."
  elsif guess > secret
    puts "Your guess is too high."
  elsif guess < secret
    puts "Your guess is too low."
  end
end
puts "You guessed the right number"
