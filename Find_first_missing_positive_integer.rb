=begin 
This problem was asked by Stripe.

Given an array of integers, find the first missing positive integer in linear time and constant space. 
In other words, find the lowest positive integer that does not exist in the array. 
The array can contain duplicates and negative numbers as well.

For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

You can modify the input array in-place.

=end 

def findfirstmissingpostiveint(array)
    array = array.sort 
    array.each_with_index do |number, index|
        answer = 0 
        answer = number + 1
        if answer != 0 
        return answer if answer != array[index + 1]
        end 
    end 
end




print findfirstmissingpostiveint([3, 4, -1, 1])
puts ""
print findfirstmissingpostiveint([1, 2, 0])
puts ""
print findfirstmissingpostiveint([-7, -6, -5, -3, -1])
puts ""
print findfirstmissingpostiveint([-2,1])