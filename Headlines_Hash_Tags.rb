=begin
Write a function that retrieves the top 3 longest words of a newspaper headline and transforms them into hashtags. 
If multiple words tie for the same length, retrieve the word that occurs first.
Examples

get_hash_tags("How the Avocado Became the Fruit of the Global Trade")
➞ ["#avocado", "#became", "#global"]

get_hash_tags("Why You Will Probably Pay More for Your Christmas Tree This Year")
➞ ["#christmas", "#probably", "#will"]

get_hash_tags("Hey Parents, Surprise, Fruit Juice Is Not Fruit")
➞ ["#surprise", "#parents", "#fruit"]

get_hash_tags("Visualizing Science")
➞ ["#visualizing", "#science"]
Notes

If the title is less than 3 words, just order the words in the title by length in descending order (see example #4).
Punctuation does not count towards a word's length.
    
=end
def sort_array(string)
   array = string.gsub(/[^A-Za-z0-9\s]/i, '').split
   (array.length - 1).times do |j|
      while j > 0
         if array[j + 1].length > array[j].length
            array[j], array[j + 1] = array[j + 1], array[j]
         else
            break
         end
         j -= 1
      end
   end
   array
end

def get_hash_tags(string)
   array = sort_array(string)
   new_array = [] 
   for x in 0..array.length - 1
      break if x == 3 || x == array.length 
      new_array << "#" + array[x].downcase
   end 
   new_array 
end 

print get_hash_tags("Hey Parents, Surprise, Fruit Juice Is Not Fruit")
puts " "
print get_hash_tags("How the Avocado Became the Fruit of the Global Trade")
puts " "
print get_hash_tags("Visualizing Science")
puts " "
print get_hash_tags("Why You Will Probably Pay More for Your Christmas Tree This Year")
puts " "