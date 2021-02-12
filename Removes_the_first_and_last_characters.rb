=begin
Create a function that removes the first and last characters from a string.
Examples
remove_first_last("hello") ➞ "ell"
remove_first_last("maybe") ➞ "ayb"
remove_first_last("benefit") ➞ "enefi"
remove_first_last("a") ➞ "a"
Notes
If the string is equal to or fewer than 2 characters long, return the string itself.
=end

def remove_first_last(string)
    return string if string.size <= 2
    string.slice!(0)
    string.chop()
end
  
  puts remove_first_last("hello")
  puts remove_first_last("maybe")
  puts remove_first_last("a")
  puts remove_first_last("benefit") 