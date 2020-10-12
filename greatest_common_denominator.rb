=begin
Given n numbers, find the greatest common denominator between them.
For example, given the numbers [42, 56, 14], return 14.
=end
require 'prime'
numbers = [42,56,14]
result = []

numbers.each do |num|
  result.push(num.prime_division)
end

  print result
