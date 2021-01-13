=begin
 Write a function to reverse an array. (WITHOUT using the built in reverse function). Write your algorithm to create your own new array. 
reverse([1, 2, 3, 4]) ➞ [4, 3, 2, 1]
reverse([9, 9, 2, 3, 4]) ➞ [4, 3, 2, 9, 9]
reverse([]) ➞ []
=end

def reverse(arr)
    reversed = Array.new
    (1..arr.size).each do |i|
      reversed << arr[i * -1]
    end
    reversed
  end
  
  puts "Array being reversed to  #{reverse([9, 9, 2, 3, 4])}" 
  puts "Array being reversed to  #{reverse([1, 2, 3, 4])}" 
  puts "Array being reversed to  #{reverse([])}" 