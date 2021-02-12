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

every time you do count, you are going through the whole array and checking the number of times this occurs.

try a better algorithm where you only have to go through the array one and then get the result in the end.

[13, true, 13, nil]

everytime you call .count it goes over it
=end

def delete_occurrences(array, limit)
  #count = 0
  newarray = []
  for i in 0...array.length    
    if !newarray.include?(array[i])
      check = array[i]
      count = 0
      array.each do |element|
        if element == check 
          if count != limit 
            newarray.push(check)
            count += 1 
          end 
        end

      end

    end
  end 
  newarray
end



#its not ready
print delete_occurrences([1, 1, 1, 1], 2)
puts ""
print delete_occurrences([13, true, 13, nil], 1)
puts ""
print delete_occurrences([true, true, true], 2)
puts ""
print delete_occurrences([1,3,1,3,7,4,1,2,1,4,3,3], 2)

