=begin
Create a function which counts how many lone 1s appear in a given number.
 Lone means the number doesn't appear twice or more in a row. 
 
 count_lone_ones(101) ➞ 2

count_lone_ones(1191) ➞ 1

count_lone_ones(1111) ➞ 0

count_lone_ones(462) ➞ 0
=end

def count_lone_ones(string)
    string = string.to_s.split(//).map{|chr| chr.to_i}
    check = 1
    count = 0
    len = (string.length)-1

    return 0  if !string.include?(1)
   
    string.each_with_index do |number, index|
        if index == 0 && number == check && string[index+1] != check  || index == len  && number == check && string[index-1] != check
            count += 1 
        elsif string[index-1] != check && number == check && string[index+1] != check 
            count += 1
        else
            count += 0
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