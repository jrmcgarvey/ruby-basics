puts "Enter the starting year."
a = gets.chomp.to_i
puts "Enter the ending year."
b = gets.chomp.to_i
l = []
for i in (a..b) do
  if i % 400 == 0
    l << i
  elsif i % 100 == 0
    next
  elsif i % 4 == 0
    l << i
  end
end

puts "The leap years are #{l}"
