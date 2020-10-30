=begin
    
We'll say that a value is "everywhere" in an array if for every pair of adjacent elements in the array, at least one of the pair is that value. Return true if the given value is everywhere in the array.

isEverywhere([1, 2, 1, 3], 1) → true

isEverywhere([1, 2, 1, 3], 2) → false

isEverywhere([1, 2, 1, 3, 4], 1) → false


=end

def isEverywhere(array, target)
    arr = []
    for i in 0..array.length-2
        if array[i] == target || array[i+1] == target 
           arr << 0
        else
           arr << 1
        end
    end
    return true if !arr.include?(1)
    false  
end


print isEverywhere([1, 2, 1, 3], 1)
puts ""
print isEverywhere([1, 2, 1, 3], 2)
puts ""
print isEverywhere([1, 2, 1, 3, 4], 1)
