=begin
Do this without using the .uniq method

Create a function that takes two arguments: an array arr and a number num. If an element occurs in arr more than num times, remove the extra occurrence(s) and return the result.

Examples

delete_occurrences([1, 1, 1, 1], 2) ➞ [1, 1]

delete_occurrences([13, true, 13, nil], 1) ➞ [13, true, nil]

delete_occurrences([true, true, true], 3) ➞ [true, true, true]
Notes
Do not alter the order of the original array.
Algorithm :

1.We have a set of elements and a number(occurrence limit ) . we need to find the each element's occurrence in that set which should not be more than given number. The extra occurrence than the given specified occurrence limit should be removed.
2.Lets take the first element, and compare it with rest all elements on the right to check it's occurrence. By doing this we get the occurrence of the first element. now we should only consider the occurrence up to the given occurrence limit .
3.Example limit given is 2 and we should only consider 2 occurrence of each element.
4.Similarly do it for all the elements.
5 .we should display all the element's occurrences up to the given limit.
=end

def delete_occurrences(arr, num)
  newarray= []
  arr.each do |element| 
    newarray.push(element) if newarray.count(element) != num   
  end
 newarray
end

print delete_occurrences([1, 1, 1, 1], 2)
puts ""
print delete_occurrences([13, true, 13, nil], 1)
puts ""
print delete_occurrences([true, true, true], 3)

