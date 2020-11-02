=begin 
Given n of 1 or more, return the factorial of n, which is n * (n-1) * (n-2) ... 1. Compute the result recursively (without loops).
factorial(1) → 1
factorial(2) → 2
factorial(3) → 6
=end

def factorial(number)
  
    return 1 if number == 1
    number * factorial(number - 1)
end
 
print factorial(1) 
puts ""
print factorial(2) 
puts ""
print factorial(3)