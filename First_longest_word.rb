=begin
Write a function that finds the longest word in a sentence. If two or more words are found, return the first longest word. Characters such as apostophe, comma, period (and the like) count as part of the word (e.g. O'Connor is 8 characters long).
Examples
longest_word("Hello darkness my old friend.") ➞ "darkness"
longest_word("Hello there mate.") ➞ "Hello"
longest_word("Margaret's toy is plastic.") ➞ "Margaret's"
=end


def longest_word(string)
    word_size = 0
    longest_word = ""
  
    string.split(" ").each do |word|
      if word.size > word_size
        word_size = word.size
        longest_word = word
      end
    end
    longest_word
end
  
  
  print longest_word("Hello darkness my old friend.") 
  puts ""
  print longest_word("Hello there mate.")
  puts ""
  print longest_word("Margaret's toy is plastic.") 