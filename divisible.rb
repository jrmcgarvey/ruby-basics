def divisible
  a = []
  for i in (1..100) do
    if i % 2 == 0
      a << i
    elsif i % 3 == 0
      a << i
    elsif i % 5 == 0
      a << i
    end
  end
  a
end

puts divisible
