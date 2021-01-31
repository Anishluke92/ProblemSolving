=begin 
This problem was asked by Stripe.

Given an array of integers, find the first missing positive integer in linear time and constant space. 
In other words, find the lowest positive integer that does not exist in the array. 
The array can contain duplicates and negative numbers as well.

For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

You can modify the input array in-place.

=end 

def FindFirstMissingPostiveInt(array)
  array = array.sort 
  array.each_with_index do |number, index|
    answer = 0
    answer = number + 1
    if number == -1 
      if index == 0 
        return answer if answer != array[index + 1] && answer != 0
      else 
        return answer if answer != array[index + 1]
      end
    else 
      return answer if answer != array[index + 1]
    end
  end 

end



print FindFirstMissingPostiveInt([3, 4, -1, 1])
puts ""
print FindFirstMissingPostiveInt([1, 2, 0])
puts ""
print FindFirstMissingPostiveInt([-7, -6, -5, -3, -1])
puts ""
print FindFirstMissingPostiveInt([-2,1])
puts " "
print FindFirstMissingPostiveInt([-2, -4, -3, -1, 1, 2])