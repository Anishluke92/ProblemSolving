=begin 
Write a function that returns the length of a string. Make your function recursive.

Examples

length("apple") ➞ 5

length("make") ➞ 4

length("a") ➞ 1

length("") ➞ 0
Notes
Check the Resources tab for info on recursion.

=end

def length(string)
  if string == '' 
    return 0
  else 
    return 1 + length(string.chop)  
  end
  
end

    
print length("apple")
puts ""
print length("")
puts ""
print length("make")
puts ""
print length("a")