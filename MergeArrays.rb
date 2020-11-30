=begin 
Create a function that takes two arrays and combines them by alternatingly taking elements from each array in turn.

The arrays may be of different lengths, with at least one character / digit.
The first array will contain string characters (lowercase, a-z).
The second array will contain integers (all positive).

Examples
merge_arrays(["a", "b", "c", "d", "e"], [1, 2, 3, 4, 5])
➞ ["a", 1, "b", 2, "c", 3, "d", 4, "e", 5]

merge_arrays([1, 2, 3], ["a", "b", "c", "d", "e", "f"])
➞ [1, "a", 2, "b", 3, "c", "d", "e", "f"]

merge_arrays(["f", "d", "w", "t"], [5, 3, 7, 8])
➞ ["f", 5, "d", 3, "w", 7, "t", 8]
=end

def merge_arrays(array1, array2)
    new_array = []
  
    i = 0
    while array1[i] || array2[i]
  
      new_array << array1[i] if array1[i]
      new_array << array2[i] if array2[i]
  
      i += 1;
    end
  
    new_array
  end
  
  
  
  print merge_arrays(["a", "b", "c", "d", "e"], [1, 2, 3, 4, 5])
  puts ""
  print merge_arrays([1, 2, 3], ["a", "b", "c", "d", "e", "f"])
  puts ""
  print merge_arrays(["f", "d", "w", "t"], [5, 3, 7, 8])
  puts ""
  print merge_arrays(["a", "b", "c", "d", "e"], [1, 2, 3])