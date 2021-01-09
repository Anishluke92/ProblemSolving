=begin
Given a string s and a list of words words, where each word is the same length, find all starting indices of substrings in s 
that is a concatenation of every word in words exactly once.

For example, given s = "dogcatcatcodecatdog" and words = ["cat", "dog"], 
return [0, 13], since "dogcat" starts at index 0 and "catdog" starts at index 13.

Given s = "barfoobazbitbyte" and words = ["dog", "cat"],
 return [] since there are no substrings composed of "dog" and "cat" in s.

The order of the indices does not matter.
Algorithm :
Objective: we have a string and array of words. find the indices of substring in string.

Concatenate each words in the array by front to back and back to front.
Take the length of each concatenated word.
Make the substring from string by each concatenated word.
When the concatenated word matches with the substring, store the substring's first character's index from the string.
Save that substring indices.
=end


def string(string, words)
  list = []
  result = []
  words.permutation(words.length).to_a.each do |w|
   result << string.index(w.join)  if string.index(w.join)
  end
  result
end
words = ["dog", "cat"]
print string(s = "barfoobazbitbyte", words)
puts
print string(s = "dogcatcatcodecatdog", words)

