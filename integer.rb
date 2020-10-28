=begin
Given a sorted array, find the smallest positive integer that is not the sum of a subset of the array.
For example, for the input [1, 2, 3, 10], you should return 7.
=end
input = [1,2,3,10]
def smallest_positive_integer(a)
  len = a.length
  answer = 1
  for i in 0..len
    if a[i] <= answer
      answer += a[i]
      next
    end
  return answer
  end
end

puts smallest_positive_integer(input)
