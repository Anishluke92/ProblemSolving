=begin
1. Create a function to count the number of 1s in a 2D array.
Examples
count_ones([
  [1, 0],
  [0, 0]
]) ➞ 1
count_ones([
  [1, 1, 1],
  [0, 0, 1],
  [1, 1, 1]
]) ➞ 7
count_ones([
  [1, 2, 3],
  [0, 2, 1],
  [5, 7, 33]
]) ➞ 2
=end

def count_number(array)
    count = 0
    array.each do |subarray|
      subarray.each do |i|
        count += 1 if i == 1
      end
    end
    count
  end
  
  
  puts count_number([[1, 0],[0, 0]])
  
  puts count_number([[1, 1, 1], [0, 0, 1],[1, 1, 1]])
  
  puts count_number([[1, 2, 3],[0, 2, 1],[5, 7, 33]])
  