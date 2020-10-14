=begin
5. Write a function to reverse an array. (WITHOUT using the built in reverse function). Write your algorithm to create your own new array. 
reverse([1, 2, 3, 4]) ➞ [4, 3, 2, 1]
reverse([9, 9, 2, 3, 4]) ➞ [4, 3, 2, 9, 9]
reverse([]) ➞ []
=end


def reverse(arr)
  reversed = Array.new

   (0...arr.size).each do |i|
    if arr.length > 0 
     reversed << arr.pop
    else
     reversed
    end

  end
  reversed
 
end

puts "Array being reversed to  #{reverse([9, 9, 2, 3, 4])}" 
puts "Array being reversed to  #{reverse([1, 2, 3, 4])}" 
puts "Array being reversed to  #{reverse([])}" 


