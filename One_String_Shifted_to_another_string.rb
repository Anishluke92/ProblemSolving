=begin
    
This problem was asked by Google.

Given two strings A and B, return whether or not A can be shifted some number of times to get B.

For example, if A is abcde and B is cdeab, return true. If A is abc and B is acb, return false.
    
=end


def string(a, b)
  array = a.split("")
  limit = array.length * array.length
  (limit).times do |x|
    for x in 0..array.length - 1
        array[x], array[x - 1] = array[x - 1], array[x] if array.join != b    
        return true 
    end
   end 
end 


print string("abcde", "cdeab")
puts ""
print string("abc", "acb")