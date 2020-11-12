=begin 
We want make a package of goal kilos of chocolate. We have small bars (1 kilo each) and big bars (5 kilos each).
 Return the number of small bars to use, assuming we always use big bars before small bars. Return -1 if it can't be done.

makeChocolate(4, 1, 9) → 4
makeChocolate(4, 1, 10) → -1
makeChocolate(4, 1, 7) → 2
=end

def makeChocolate(smallbar, bigbar, goal)
    totalbar = smallbar + (bigbar * 5)
    if totalbar != goal    
        totalbar - goal
    else 
        return smallbar
    end 

end

puts makeChocolate(4, 1, 9) 
puts makeChocolate(4, 1, 10)
puts makeChocolate(4, 1, 7)