=begin
Write a function that takes in a string and for each character,
returns the distance to the nearest vowel in the string.
If the character is a vowel itself, return 0.

Examples

distance_to_nearest_vowel("aaaaa") ➞ [0, 0, 0, 0, 0]

distance_to_nearest_vowel("babbb") ➞ [1, 0, 1, 2, 3]

distance_to_nearest_vowel("abcdabcd") ➞ [0, 1, 2, 1, 0, 1, 2, 3]

distance_to_nearest_vowel("shopper") ➞ [2, 1, 0, 1, 1, 0, 1]

Notes

All input strings will contain at least one vowel.
Strings will be lowercased.
Vowels are: a, e, i, o, u.   

=end
$vowels = { a: 0, e: 0, i: 0, o: 0, u: 0 } 

def distance_calculation(array, ind)
   right_count = 0
   left_count= 0
   (0..ind).each do |i|
     right_count = array.index(array[ind - i]) + 1  if  $vowels[array[ind - i].to_sym]
   end
   (ind..array.length - 1).each do |i|
     left_count = array.index(array[i]) + 1 if  $vowels[array[i].to_sym]
   end 
 
   

       

    
end 

def distance_to_nearest_vowel(string)
    result = [] 
   # vowels = { a: 0, e: 0, i: 0, o: 0, u: 0 } 
    array = string.chars
    array.each_with_index do |letter, ind|
        if !$vowels[letter.to_sym]
            result << distance_calculation(array, ind)
        else 
            result << $vowels[letter.to_sym]
        end
    end 
    result
end 

#print distance_to_nearest_vowel("aaaaa")
puts " "
print distance_to_nearest_vowel("abcdabcd")
puts " "
#print distance_to_nearest_vowel("babbb") 
puts " "
#print distance_to_nearest_vowel("shopper")
puts " "
