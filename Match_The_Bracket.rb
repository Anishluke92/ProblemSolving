=begin
  This problem was asked by Facebook.

Given a string of round, curly, and square open and closing brackets, 
return whether the brackets are balanced (well-formed).
For example, given the string "([])", you should return true.
Given the string "([)]" or "((()", you should return false.
  
=end

def index_finder(string)
  brackets = { "{" => "}", "[" => "]", "(" => ")" }
  reference = ["{", "[", "("]
  index  = 0
  string.chars.each_with_index do |element, index|
    return index = index - 1 if !brackets.has_key?(element)
  end
end

def bracket(string)
  brackets = { "{" => "}", "[" => "]", "(" => ")" }
  
  open_side = string[0..index_finder(string)]
  close_side = string[index_finder(string) + 1..string.length - 1]
  
end 


print bracket("([])")
puts ""
print bracket("((()")
puts""
print bracket("([)]")
