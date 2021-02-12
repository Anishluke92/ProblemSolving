=begin
Create a function that accepts a string, checks if it's a valid email address and returns either true or false, depending on the evaluation.
The string must contain an @ character.
The string must contain a . character.
The @ must have at least one character in front of it.
e.g. "e@edabit.com" is valid while "@edabit.com" is invalid.
The . and the @ must be in the appropriate places.
e.g. "hello.email@com" is invalid while "john.smith@email.com" is valid.
If the string passes these tests, it's considered a valid email address.
Examples
validate_email("@gmail.com") ➞ false
validate_email("hello.gmail@com") ➞ false
validate_email("gmail") ➞ false
validate_email("hello@gmail") ➞ false
validate_email("hello@edabit.com") ➞ true
Notes
Check the Tests tab to see exactly what's being evaluated.
You can solve this challenge with RegEx, but it's intended to be solved with logic.
Solutions using RegEx will be accepted but frowned upon 🙁
=end

def validate_email(email_address)
  return false if email_address["@"] == nil 
  at_split = email_address.split("@")
  return false if at_split[0] == ""
  dot_split = at_split[1].split(".")
  dot_split.length == 2 && dot_split[0] != ""
end
  
  
print validate_email("hello@edabit.com")
puts ""
print validate_email("@gmail.com")
puts ""
print validate_email("gmail")
puts ""
print validate_email("hello.gmail@com")
puts ""
print validate_email("hello@gmail")
puts ""
print validate_email("anishluke92@gmail.com")
puts ""
print validate_email("anishluke92@.com")
puts ""
print validate_email("anishluke92@gmail.")
