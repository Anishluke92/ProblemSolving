=begin
2. A positive number's population is the number of 1s in its binary representation. An evil number has an even numbered population, whereas an odious number has an odd numbered population. Moreover, a number is pernicious if its population is a prime number.
Create a function that takes a number as an argument and returns a sorted array of all its descriptors ("Evil", "Odious", or "Pernicious").
Examples
how_bad(7) ➞ ["Odious", "Pernicious"]
# binary = 111
how_bad(17) ➞ ["Evil", "Pernicious"]
# binary = 10001
how_bad(23) ➞ ["Evil"]
# binary = 10111
=end

def how_bad(n)
  numbered_population = ["Evil" , "Odious","Pernicious"]
  result = []
  binary = n.to_s(2).count('1')
  if binary % 2 == 0 
    return result.push(numbered_population[0]) if binary != 2
    result.push(numbered_population[0],numbered_population[2])
  else 
    return result.push(numbered_population[1]) if binary == 1 
    result.push(numbered_population[1],numbered_population[2])
  end
end

print how_bad(7)
puts ""
print how_bad(17)
puts ""
print how_bad(23) 
puts ""
