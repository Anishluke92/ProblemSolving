=begin  
Given a non-empty array, return true if there is a place to split the array so that the sum of the numbers on one side is equal to the sum of the numbers on the other side.

canBalance([1, 1, 1, 2, 1]) → true
canBalance([2, 1, 1, 2, 1]) → false
canBalance([10, 10]) → true
=end

def canBalance(array)
    leftside = 0
    for i in 0..array.length 
        leftside += array[i].to_i
    end 
    rightside = 0
    array.reverse.each do |i|
        rightside += i
    end 
    rightside

    return true if (leftside == rightside)
    false
end 

#print canBalance([1, 1, 1, 2, 1]) 
puts ""
print canBalance([2, 1, 1, 2, 1])
