=begin
1. given an array of unsorted numbers. e.g. [0, 20, 23, 3, 23,5,343,23,876,202] print all the odd numbers in a list in the same line.
=end

numbers =  [0, 20, 23, 3, 23,5,343,23,876,202]
odd_numbers = []

numbers.each do |x|
  if x%2 != 0
    odd_numbers.push(x)
  end  
end

print "Odd number  #{odd_numbers}"