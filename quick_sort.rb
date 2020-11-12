def quicksort(array)
    if array.length > 1
        pivot = array.pop 
        left = []
        rigth = []
        for value in array 
            if value <= pivot ? 
                left.push(value) : rigth.push(value)
            end 
        end 
        array = quicksort(left) + [pivot] + quicksort(rigth)
    end 
    array 
end
print quicksort([5, 8, 3, 9, 6, 2, 4, 1, 7, 10])