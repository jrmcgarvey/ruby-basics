require 'prime'

def largest_p(val)
  if Prime.prime?(val)
    return val
  end
  if val<=1
    return nil
  end
  if val%2 == 0
    new_largest_p = largest_p(val/2)
    if new_largest_p
      return new_largest_p
    else
      return 2
    end
  end
  if val%3 ==0
    new_largest_p = largest_p(val/3)
    if new_largest_p
      return new_largest_p
    else
      return 3
    end
  end
  i=1
  while true
    testval = 6*i-1
    if Prime.prime?(testval)
      if val%testval == 0
        new_largest_p = largest_p(val/testval)
        if new_largest_p
          return new_largest_p
        else
          return testval
        end
      end
    end
    testval = 6*i + 1
    if Prime.prime?(testval)
      if val%testval == 0
        new_largest_p = largest_p(val/testval)
        if new_largest_p 
          return new_largest_p
        else
          return testval
        end
      end
    end
    i += 1
  end
end 
puts "Enter a number, to find the largest prime factor:"
inp_str=gets.chomp
inp_val=inp_str.to_i
puts inp_val
puts largest_p(inp_val)