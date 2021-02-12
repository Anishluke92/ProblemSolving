=begin
5. Return the total number of arrays inside a given array.
Examples
num_of_subarrays([[1, 2, 3]]) ➞ 1
num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3]]) ➞ 3
num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]]) ➞ 4
num_of_subarrays([1, 2, 3]) ➞ 0
Notes
N/A
=end

def num_of_subarrays(array)
  array.each do |element|
    return array.length if element.kind_of? Array
    return 0 
  end 
end
  
puts num_of_subarrays([1, 2, 3]) 
puts num_of_subarrays([[1, 2, 3]])
puts num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3]]) 
puts num_of_subarrays([[1, 2, 3], [1, 2, 3], [1, 2, 3], [1, 2, 3]])