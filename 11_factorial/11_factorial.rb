#!/usr/bin/env ruby

# Calculate how many trailing 0's has the factorial of number => number!
# The number of 0 is equal to the recursive sum of the integer result of divinding the number by 5, until the number is < 5

# Ex: Number of trailing 0s of 12344!
# 12344 / 5  ->  2468 / 5  -> 493 / 5 -> 98 /5 -> 19 / 5
#   2468     +    493      +    98    +   19   +    3
# 3081

def z_function(number)
  return 0 if number < 5
  number/5 + z_function(number/5)
end

# Main function
input = Array.new
loop do
  input << gets.to_i
  break if input.size == input[0] + 1
end

input.shift
input.each {|z| puts z_function z}


