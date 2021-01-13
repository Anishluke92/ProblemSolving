=begin
Given an array of numbers and a value n, write a function that returns the probability of choosing a number greater than or equal to n from the array. The probability should be expressed as a percentage, rounded to one decimal place.
Examples
probability([5, 1, 8, 9], 6) ➞ 50.0
probability([7, 4, 17, 14, 12, 3], 16) ➞ 16.7
probability([4, 6, 2, 9, 15, 18, 8, 2, 10, 8], 6) ➞ 70.0
Notes
Precent probability of event = 100 * (num of favourable outcomes) / (total num of possible outcomes)
=end

def probability(array, n)
    count = 0.0
    precernt_probability = 0
    array.each do |elements|
      if elements >= n
        count += 1
        precernt_probability = (count * 100 / array.length).round(1)
      end
    end
    precernt_probability
  end
  
  puts probability([5, 1, 8, 9], 6)
  puts probability([7, 4, 17, 14, 12, 3], 16)
  puts probability([4, 6, 2, 9, 15, 18, 8, 2, 10, 8], 6)
  