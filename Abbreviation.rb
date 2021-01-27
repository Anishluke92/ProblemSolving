=begin
You are given two inputs:
An array of abbreviations.
An array of words.
Write a function that returns true if each abbreviation uniquely identifies a word, and false otherwise.
Examples
unique_abbrev(["ho", "h", "ha"], ["house", "hope", "happy"]) ➞ false
// "ho" and "h" are ambiguous and can identify either "house" or "hope"
unique_abbrev(["s", "t", "v"], ["stamina", "television", "vindaloo"]) ➞ true
unique_abbrev(["bi", "ba", "bat"], ["big", "bard", "battery"]) ➞ false
unique_abbrev(["mo", "ma", "me"], ["moment", "many", "mean"]) ➞ true
Notes
Abbreviations will be a substring from [0, n] from the original string.
=end
def unique_abbrev(abbrev, words)
  result = []
  abbrev.each do |abb|
    count = 0
    words.each_with_index do |word, index|
      temp_word = word[0..abb.length - 1]
      count += 1 if temp_word[abb] 
      return false if count > 1
    end
  end
  true
end
  
  print unique_abbrev(["ho", "h", "ha"], ["house", "hope", "happy"])
  puts ""
  print unique_abbrev(["mo", "ma", "me"], ["moment", "many", "mean"])
  puts ""
  print unique_abbrev(["s", "t", "v"], ["stamina", "television", "vindaloo"])
  puts ""
  print unique_abbrev(["bi", "ba", "bat"], ["big", "bard", "battery"]) 
    
  