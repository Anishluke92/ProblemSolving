=begin 
The fibonacci sequence is a famous bit of mathematics, and it happens to have a recursive definition.
 The first two values in the sequence are 0 and 1 (essentially 2 base cases). Each subsequent value is the sum of the previous two values, so the whole sequence is: 0, 1, 1, 2, 3, 5, 8, 13, 21 and so on. Define a recursive fibonacci(n) method that returns the nth fibonacci number, with n=0 representing the start of the sequence.

fibonacci(0) → 0
fibonacci(1) → 1
fibonacci(2) → 1
=end

def fibonacci(number)
    return 0 if number == 0
    return 1 if number  == 1
        
    return fibonacci(number - 2) + fibonacci(number - 1)
    
end 
print fibonacci(0) 
puts ""
print fibonacci(1) 
puts ""
print fibonacci(2)
puts ""
print fibonacci(5)
puts ""
print fibonacci(6)
    
       
    