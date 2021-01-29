=begin
5. Write a function to reverse an array. (WITHOUT using the built in reverse function). Write your algorithm to create your own new array. 
reverse([1, 2, 3, 4]) ➞ [4, 3, 2, 1]
reverse([9, 9, 2, 3, 4]) ➞ [4, 3, 2, 9, 9]
reverse([]) ➞ []
=end

def reverse(array)
   return "Empty array" if array.empty? 
  reversed = Array.new
  (1..array.size).each do |i|
    reversed << array[i * -1]
  end
  "Array being reversed to #{reversed}"
end
  
puts reverse([9, 9, 2, 3, 4])
puts reverse([1, 2, 3, 4]) 
puts reverse([])


