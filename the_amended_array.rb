=begin
1. Given a sorted array of numbers, remove any numbers that are divisible by 13. Return the amended array.
Examples
unlucky_13([53, 182, 435, 591, 637]) ➞ [53, 435, 591]
# 182 and 637 are divisible by 13.
unlucky_13([24, 316, 393, 458, 1279]) ➞ [24, 316, 393, 458, 1279]
# No numbers in the array are divisible by 13.
unlucky_13([104, 351, 455, 806, 871]) ➞ []
# All numbers in the array are divisible by 13.
=end

def unlucky_13(array)
  array.each do |element|
    array.delete(element) if element % 13 == 0
  end
  array 
end
  
print unlucky_13([53, 182, 435, 591, 637])
puts ""
print unlucky_13([24, 316, 393, 458, 1279])
puts ""
print unlucky_13([104, 351, 455, 806, 871])
puts "" 
