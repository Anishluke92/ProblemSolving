=begin
 Write a function to reverse an array. (WITHOUT using the built in reverse function). Write your algorithm to create your own new array. 
reverse([1, 2, 3, 4]) ➞ [4, 3, 2, 1]
reverse([9, 9, 2, 3, 4]) ➞ [4, 3, 2, 9, 9]
reverse([]) ➞ []
=end


def reverse(array)
  reversed = Array.new
  return reversed if array.empty? 
  (1..array.size).each do |i|
    reversed << array[i * -1]
  end
   reversed
end
  
print reverse([9, 9, 2, 3, 4])
puts ""
print reverse([1, 2, 3, 4]) 
puts ""
print reverse([])

