=begin
  This problem was asked by Facebook.

Given a string of round, curly, and square open and closing brackets, 
return whether the brackets are balanced (well-formed).
For example, given the string "([])", you should return true.
Given the string "([)]" or "((()", you should return false.
  
=end
$brackets = { "{" => "}", "[" => "]", "(" => ")" }

def index_finder(string)
  reference = ["{", "[", "("]
  string.chars.each_with_index do |element, index|
    return index - 1 if !$brackets.has_key?(element)
  end
end

def bracket(string)
  result = []
  open_side = string[0..index_finder(string)]
  close_side = string[index_finder(string) + 1..string.length - 1]
  for i in 0..(open_side.length-1)
    result << false  if $brackets[open_side[i - 1]] != close_side[i]
    result << true 
  end
  result.all? true
end 


print bracket("([])")
puts ""
print bracket("((()")
puts""
print bracket("([)]")
