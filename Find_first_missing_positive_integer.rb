=begin 
This problem was asked by Stripe.

Given an array of integers, find the first missing positive integer in linear time and constant space. 
In other words, find the lowest positive integer that does not exist in the array. 
The array can contain duplicates and negative numbers as well.

For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

You can modify the input array in-place.
=end 

def missingpostiveint(array)
    array = array.sort 
    array.each_with_index do |value, index|
        
         return (value + 1) if value >= 1 && array[index + 1] != value + 1 
    
    end


end

print missingpostiveint([3, 4, -1, 1])
puts 
print missingpostiveint([1, 2, 0])