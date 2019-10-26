def add_up(i)
  sum=0
  (1..i).each { |e| sum += e }
  sum
end

puts add_up(10)
puts add_up(20)
puts add_up(100)
