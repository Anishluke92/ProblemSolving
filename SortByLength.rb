=begin
Create a function that takes a string and returns a string ordered by the length of the words. From shortest to the longest word. If there are words with the same amount of letters, order them alphabetically.

Examples
sort_by_length("Hello my friend") ➞ "my Hello friend"

sort_by_length("Have a wonderful day") ➞ "a day Have wonderful"

sort_by_length("My son loves pineapples") ➞ "My son loves pineapples"
Notes
Punctuation (periods, commas, etc) belongs to the word in front of it.

Algorithm 
Lets take a sentence, for example "Hello my dear world". And in that sentence we see that it consist of four words.
Let take the first word and count its alphabets to get the word size.
then lets do the same to rest of the words in that sentence.
Now we got to know all the word size in that sentence. Lets rearrange the sentence by sorting the words by size in ascending order. example,
"my dear hello world"
=end
def sort_by_length(strings)

  strings.split(" ").sort_by(&:length).join(" ")

end

print sort_by_length("Hello my friend")
puts ""
print sort_by_length("Have a wonderful day") 
puts ""
print sort_by_length("My son loves pineapples")