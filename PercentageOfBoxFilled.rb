=begin
Create a function that calculates what percentage of the box is filled in. Give your answer as a string percentage rounded to the nearest integer.

Examples

percent_filled([0
  "####",
  "#  #",
  "#o #",
  "####"
]) ➞ "25%"

# One element out of four spaces.

percent_filled([
  "#######",
  "#o oo #",
  "#######"
]) ➞ "60%"

# Three elements out of five spaces.

percent_filled([
  "######",
  "#ooo #",
  "#oo  #",
  "#    #",
  "#    #",
  "######"
]) ➞ "31%"

# Five elements out of sixteen spaces.
Notes
Only "o" will fill the box and also "o" will not be found outside of the box.
Don't focus on how much physical space an element takes up, pretend that each element occupies one whole unit (which you can judge according to the number of "#" on the sides).
=end


def percent_filled(array)
  count_zeros = 0
  count_space = 0
  total_length = 0

  array.each do |element|
    if element.include? " " or element.include? 'o'
      count_zeros += element.count('o')
      count_space += element.count(' ')
    end
  end
  total_length = count_zeros + count_space
 "#{count_zeros*100/total_length}%"

end


print percent_filled(["####","#  #","#o #","####"])
puts ""
print percent_filled(["######","#ooo #","#oo  #","#    #","#    #","######"])
puts ""
print percent_filled(["#######","#o oo #","#######"])
