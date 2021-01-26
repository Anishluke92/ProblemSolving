=begin
Create a function which counts how many lone 1s appear in a given number.
 Lone means the number doesn't appear twice or more in a row. 
 
 count_lone_ones(101) ➞ 2

count_lone_ones(1191) ➞ 1

count_lone_ones(1111) ➞ 0

count_lone_ones(462) ➞ 0
=end

def count_lone_ones(string)
  array = string.to_s.chars
  count = 0
  array.each_with_index do |number, ind|  
     if number == "1"
        count += 1 if ind == 0  && array[ind + 1] != "1"
        count += 1  if array[ind - 1] != "1" && array[ind + 1] != "1"
     end
  end 
  count
end 

print  count_lone_ones(101)
puts ""
print count_lone_ones(1191)
puts ""
print count_lone_ones(1111) 
puts ""
print count_lone_ones(462)
puts ""
print count_lone_ones(1)