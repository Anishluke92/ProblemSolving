=begin
5. Return the coordinates ([row, col]) of the element that differs from the rest.
Examples
where_is_waldo([
  ["A", "A", "A"],
  ["A", "A", "A"],
  ["A", "B", "A"]
]) ➞ [3, 2]
where_is_waldo([
  ["c", "c", "c", "c"],
  ["c", "c", "c", "d"]
]) ➞ [2, 4]
where_is_waldo([
  ["O", "O", "O", "O"],
  ["O", "O", "O", "O"],
  ["O", "O", "O", "O"],
  ["O", "O", "O", "O"],
  ["P", "O", "O", "O"],
  ["O", "O", "O", "O"]
]) ➞ [5, 1]
Notes
The given array will always be a square.
Rows and columns are 1-indexed (not zero-indexed).
=end

def where_is_waldo(array)
   coordinates = []
   array.each_with_index do |sub_array, index_a|
      sub_array.each_with_index do |element, index_b|
        return coordinates.push(index_a + 1, index_b +1) if element != sub_array[index_b + 1] && element  != sub_array[index_b - 1]
      end 
   end
   coordinates
end
    
print where_is_waldo([
    ["c", "c", "c", "c"],
    ["c", "c", "c", "d"]
]) 
  
puts ""
  
print where_is_waldo([
    ["A", "A", "A"],
    ["A", "A", "A"],
    ["A", "B", "A"]
]) 
  
puts ""
  
print where_is_waldo([
    ["O", "O", "O", "O"],
    ["O", "O", "O", "O"],
    ["O", "O", "O", "O"],
    ["O", "O", "O", "O"],
    ["P", "O", "O", "O"],
    ["O", "O", "O", "O"]
]) 
  
  
puts ""
print where_is_waldo([
  ["P", "O", "O", "O"],
  ["O", "O", "O", "O"],
  ["O", "O", "O", "O"],
  ["O", "O", "O", "O"],
  ["O", "O", "O", "O"],
  ["O", "O", "O", "O"]
])
  
  