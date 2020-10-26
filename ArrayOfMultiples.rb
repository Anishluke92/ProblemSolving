=begin 
Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num until the array length reaches length.

Examples

array_of_multiples(7, 5) ➞ [7, 14, 21, 28, 35]

array_of_multiples(12, 10) ➞ [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]

array_of_multiples(17, 6) ➞ [17, 34, 51, 68, 85, 102]
Notes
Notice that num is also included in the returned array.

Algorithm:
1. Given a two numbers, First number is the multiplication number and the second number is the range limit from 1.. n. 
2. Then the first number is multiplied with all the number is that range. 
3. And the result is being stored and shown

=end 

def array_of_multiples(number, range)
  multiplied = []
  for i in 1..range 
    multiplied.push(number*i)
  end
  multiplied
end
print array_of_multiples(7, 5)
puts ""
print array_of_multiples(12, 10)
puts ""
print array_of_multiples(17, 6)
