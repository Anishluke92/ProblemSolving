=begin
    
This problem was asked by Google.

Given two strings A and B, return whether or not A can be shifted some number of times to get B.

For example, if A is abcde and B is cdeab, return true. If A is abc and B is acb, return false.
    
=end


def string(a, b)
  array = a.split("")
  (0..array.length - 1).each do |char|
    first = array.shift
    array << first
    return true if array.join == b  
  end 
  false
end 


print string("abcde", "cdeab")
puts ""
print string("abc", "acb")