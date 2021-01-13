=begin
 Create a function that returns the sum of all even elements in a 2D matrix.
Examples
sum_of_evens([
  [1, 0, 2],
  [5, 5, 7],
  [9, 4, 3]
]) ➞ 6
// 2 + 4 = 6
sum_of_evens([
  [1, 1],
  [1, 1]
]) ➞ 0
sum_of_evens([
  [42, 9],
  [16, 8]
]) ➞ 66
sum_of_evens([
  [],
  [],
  []
]) ➞ 0
Notes
Submatrices will be of equal length.
Return 0 if the 2D matrix only consists of empty submatrices
=end

def sum_of_evens(array)
    return 0 if array.empty? 
    count = 0
    array.each do |subarray|
      subarray.each do |elements|
        count += elements if  elements % 2 == 0 
      end
    end
    count 
end
  
  puts sum_of_evens([[1, 0, 2],[5, 5, 7],[9, 4, 3]])
  puts sum_of_evens([
    [],
    [],
    []
  ])
  puts sum_of_evens([
    [42, 9],
    [16, 8]
  ])
  puts sum_of_evens([
    [1, 1],
    [1, 1]
  ])
  