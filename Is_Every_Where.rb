=begin
    
We'll say that a value is "everywhere" in an array if for every pair of adjacent elements in the array, at least one of the pair is that value. Return true if the given value is everywhere in the array.

isEverywhere([1, 2, 1, 3], 1) → true

isEverywhere([1, 2, 1, 3], 2) → false

isEverywhere([1, 2, 1, 3, 4], 1) → false
so you are checking if the number is the target or if the next number if the target.

so when this is not the case, when you have found a number that does not have a neighbouring number we are looking for, why don't you just return the whole method as false at that point. why wait till the array loop is finished and why then again loop through (when you do .include?) to find out if there is a 1 in the array to then return true and false in the end.

Better algorithm:

if you find a number that is not neighbouring the target just return false.
if you get to the end of the array and you have not returned false, then you can return true because the number is everywhere.

=end

def isEverywhere(array, target)

    for i in 0..array.length-2
        if array[i] == target || array[i+1] == target 
           return true
        else
           return false 
        end
    end
     
end


print isEverywhere([1, 2, 1, 3], 1)
puts ""
print isEverywhere([1, 2, 1, 3], 2)
puts ""
print isEverywhere([1, 2, 1, 3, 4], 1)
