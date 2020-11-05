=begin 
Write a function that changes every letter to the next letter:

"a" becomes "b"
"b" becomes "c"
"d" becomes "e"
and so on ...

Examples

move("hello") ➞ "ifmmp"

move("bye") ➞ "czf"

move("welcome") ➞ "xfmdpnf"
Notes
There will be no z's in the tests.
Algorithm:
1. Given a word, Lets take the first alphabet and find the next alphabet to it according to alphabetical order. 
2. similarly do it for the rest of the letter. 
3. merge all the found alphabets as one word.
=end 




def move(word)
  string = " "
  word = word.split("")
  array = ('a'..'z').to_a
  alphabet = Hash.new

  array.each_with_index do |key, value| 
    if value != array.length-1
      alphabet[key] = array[value + 1] 
    else
      alphabet[key] = array[0]
    end
  end 
  word.each do |element| 
    string += alphabet[element] 
  end
  string
end 

print move("hello")
puts ""
print move("bye")
puts ""
print move("welcome")


