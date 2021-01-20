=begin
Create a function that takes a list of numbers and returns the second largest number.

Examples

second_largest([10, 40, 30, 20, 50]) ➞ 40

second_largest([25, 143, 89, 13, 105]) ➞ 105

second_largest([54, 23, 11, 17, 10]) ➞ 23
=end


def second_largest(array)
  return array if array.size <= 1
  swap = true  
  while swap 
    swap = false
    (array.length - 1).times do |x|
        if array[x] < array[ x + 1]
            array[x], array[ x + 1] = array[x + 1], array[x]
            swap = true 
        end 
     end
   end
  array[1]
end 


print second_largest([10, 40, 30, 20, 50])
puts " "
print second_largest([25, 143, 89, 13, 105])
puts " "
print second_largest([54, 23, 11, 17, 10])