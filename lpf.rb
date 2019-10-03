require "prime"

def largest_prime_factor(n)
  if n <=1 
    return nil
  end
  if Prime.prime?(n)
    return n
  end
  i=2
  for i in (2..n)
    if !Prime.prime?(i) || n % i != 0
      next
    end
    j = largest_prime_factor(n / i)
    if !j
      return i
    else
      return j
    end
  end
end

puts "Enter an integer greater that 1"
n = gets.chomp.to_i
puts "the largest prime factor of that number is " + largest_prime_factor(n).to_s