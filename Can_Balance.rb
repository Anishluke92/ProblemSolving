=begin  
Given a non-empty array, return true if there is a place to split the array so that the sum of the numbers on one side is equal 
to the sum of the numbers on the other side.

canBalance([1, 1, 1, 2, 1]) → true
canBalance([2, 1, 1, 2, 1]) → false
canBalance([10, 10]) → true
=end

def canBalance(array)
    lindex = 0
    rindex = -1
    leftside = array[lindex]
    rightside = array[rindex]
    array.each_with_index do |element, index|
        if leftside == rightside && index == 0
            leftside += array[lindex += 1]
            rightside += array[rindex += - 1]
        end 
        
        if leftside > rightside 
            righside += array[rindex += -1]
        elsif rightside > leftside 
            leftside += array[lindex += 1]
        else
            leftside == rightside
        end 
    end
    

end 

# this doesn't work 

print canBalance([1, 1, 1, 2, 1]) 
puts ""
print canBalance([2, 1, 1, 2, 1])
puts ""
print canBalance([10, 10])
