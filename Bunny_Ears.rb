=begin 
We have a number of bunnies and each bunny has two big floppy ears. 
We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
bunnyEars(0) → 0
bunnyEars(1) → 2
bunnyEars(2) → 4
=end
def bunnyEars(bunny)
    return 0 if bunny == 0   
    return 2 if bunny == 1
    ears = 2
    return ears + bunnyEars(bunny-1)

end
print bunnyEars(0)
puts ""
print bunnyEars(1)
puts ""
print bunnyEars(2)
puts ""
print bunnyEars(3)