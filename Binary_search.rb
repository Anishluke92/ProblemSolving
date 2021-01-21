def binary_search(array, target)
    low = 0
    high = array.length - 1 
    while low <= high 
        middleindex = ( low + high ) >> 1
       if target > array[middleindex]
        low = middleindex + 1
        middleindex = ( low + high ) >> 1
       elsif  target < array[middleindex]
        high = middleindex - 1
        middleindex = ( low + high ) >> 1
       else
        return "Number #{target} found at position #{middleindex + 1}"
       end
    end
    "Number not found !"
    
end 

print binary_search([1, 5, 7, 30, 51, 55, 67, 88, 89, 100, 102], 0)
