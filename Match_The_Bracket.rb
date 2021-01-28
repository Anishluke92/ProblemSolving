=begin
  This problem was asked by Facebook.

Given a string of round, curly, and square open and closing brackets, 
return whether the brackets are balanced (well-formed).
For example, given the string "([])", you should return true.
Given the string "([)]" or "((()", you should return false.
  
=end

def bracket(string)
  brackets = { "{" => "}", "[" => "]", "(" => ")" }
  array = string.split("")
  mid = (array.length - 1)/ 2 
  reverse = 0
  array.each_with_index do |element, ind|
    if ind <= mid
      reverse -= 1
      return false if brackets[element] != array[reverse] 
    end 
  end 
  true
end 
 

print bracket("([])")
puts ""
print bracket("((()")
puts""
print bracket("([)]")

