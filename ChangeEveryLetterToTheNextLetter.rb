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
  arr = []
  word = word.downcase.scan /\w/ 
  alphabet = Hash.new
  ('a'..'z').each_with_index do |key, value| 
    alphabet[key] = value 
  end 
  word.each do |element| 
    arr.push(alphabet.key(alphabet[element]+1))
  end

  arr.join("")
end 

print move("hello")
puts ""
print move("bye")
puts ""
print move("welcome")


