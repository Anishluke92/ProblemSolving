=begin
Given an array of numbers, create a function that removes 25% from every number in the array except the smallest number, and adds the total amount removed to the smallest number.

Examples
show_the_love([4, 1, 4]) ➞ [3, 3, 3]

show_the_love([16, 10, 8]) ➞ [12, 7.5, 14.5]

show_the_love([2, 100]) ➞ [27, 75]
Notes
There will only be one smallest number in a given array.
=end
def love(removed, numbers)
    numbers.map do |number|
      if number * 0.25 < 1 || number == numbers.min
        number += removed 
      else
        number -= number * 0.25
      end
    end
  end
  
  def show_the_love(numbers)
    store = 0
  
    numbers.each_with_index do |number, index|
     store += number * 0.25 if (number * 0.25) >= 1 && number != numbers.min
    end
    love(store,numbers)   
     
  end
  print show_the_love([4, 1, 4])
  puts ""
  print show_the_love([ 16,10, 8])
  puts ""
  print show_the_love([2, 100])