# this function will rotate the latter c forward in the alphabet by
# n letters, wrapping at z
def rotate(c,n)
  if c >= "a" && c <= "z"
    x = c.ord - "a".ord
    x += n
    x = x % 26
    x += "a".ord
    return x.chr
  elsif c>="A" && c <= "Z"
    x = c.ord - "A".ord
    x += n
    x = x % 26
    x += "A".ord
    return x.chr
  else
    return c
  end
end

k=0
loop do
  puts "Enter a number from 1 to 25"
  k = gets.chomp.strip.to_i
  if k >=1 && k<=25
    break
  end
end

puts "Enter a sentence to be enciphered."
sentence = gets.chomp
e_sentence = ""
sentence.chars.each do |c|
  e_sentence += rotate(c,k)
end
puts "The enciphered sentence is: " + e_sentence
