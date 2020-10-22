=begin
Create a function which counts how many lone 1s appear in a given number. Lone means the number do
doesn't appear twice or more in a row.

Examples
count_lone_ones(101) ➞ 2

count_lone_ones(1191) ➞ 1

count_lone_ones(1111) ➞ 0

count_lone_ones(462) ➞ 0
Notes
Tests will include positive whole numbers only.
Algorithm

Lets take two numbes101 and 1191.
In these numbers we need to find the count of lone 1's. which doesn't appear twice.
from 101, lets take the first number 1 compare it with next number 0 and 1 doesn't repeat twice so we can count + 1.
then we check the next number 1 with the previous number 0. we found another lone 1 so we increase the count +1.
so in total the count would be 2.
5 Lets take the next number 1191, First lets take first number 1 compare it with next number 1 and we found repetition, then we compare the next number 9 with the previous number 1 and we found a different number(non repeating number).
6.To the last we compare the next number 1 with the previous number 9, then we found our first lone 1. we should then increase the count +1.
in total the count would be 1
=end
def lone(integer, len)
  count = 0
  integer.each_with_index do |number, index|
    if index == 0 && number == "1" && integer[index+1] != '1'  || index == len  && number == "1" && integer[index-1] != '1'
        count += 1 
    elsif integer[index-1] != '1' && number == "1" && integer[index+1] != '1' 
      count += 1
    else
        count += 0
    end
  end
  count
end

def count_lone_ones(integer)
  integer= integer.to_s.split("")
  return 0  if !integer.include?("1")
  len = (integer.length)-1

  lone(integer, len)
  
end

print count_lone_ones(101)
puts ""
print count_lone_ones(1011)
puts ""
print count_lone_ones(1191)
puts ""
print count_lone_ones(1111)
puts ""
print count_lone_ones(462)
puts ""

