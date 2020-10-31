=begin  
Given a non-empty array, return true if there is a place to split the array so that the sum of the numbers on one side is equal 
to the sum of the numbers on the other side.

canBalance([1, 1, 1, 2, 1]) → true
canBalance([2, 1, 1, 2, 1]) → false
canBalance([10, 10]) → true
=end

def canBalance(array)
    leftside = 0
    rightside = 0 
    if array.length <= 2
        half = 0
    else
        half = ((array.length)/2).round()
    end 

    for i in 0...array.length 

        if  i > half 
            rightside += array[i]
        else
            leftside += array[i]
        end 
    end

    return true if leftside == rightside

    false
    
end 

print canBalance([1, 1, 1, 2, 1]) 
puts ""
print canBalance([2, 1, 1, 2, 1])
puts ""
print canBalance([10, 10])
