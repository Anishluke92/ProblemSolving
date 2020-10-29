=begin 
Create a function that takes a string and returns true if the sum of the position of every letter in the alphabet is even and false if the sum is odd.

Examples

is_alpha("i'am king")  ➞ true
# 9 + 1 + 13 + 11 + 9 + 14 + 7 = 64 (even)

is_alpha("True") ➞ true
# 20 + 18 + 21 + 5= 64 (even)

is_alpha("alexa") ➞ false
# 1 + 12 + 5 + 24 + 1= 43 (odd)
Notes
Case insensitive.
Ignore non-letter symbols.

Algorithm:

1.We know the alphabets order. like A is 1, B is 2 and goes on.
2.Now lets take a sentence and from it lets take the first word. We need to find each alphabet's corresponding order number that of word and sum it. Like "in" 9+14 = 23.
3.Similarly we do the same for the all words in that sentence.
4.We add all the sums together.
=end 
def even_or_odd(hash, string)
  sum  = 0
  string.each do |letter|
    sum += hash[letter] 
  end
  if  sum % 2 != 0 
    "False"
  else 
    "True"
  end
end

def is_alpha(string)
  string = string.downcase.scan /\w/ 
  hash = {}

  ('a'..'z').to_a.each_with_index do |key, value|
    hash[key] = value + 1
  end
  
  even_or_odd(hash, string)
end

print is_alpha("I'am king")
puts ""
print is_alpha("True")
puts ""
print is_alpha("alexa")


