def insertionsort(array)
    (array.length).times do |j|
        while j > 0 
            if array[j-1] > array[j]
                array[j],array[j-1] = array[j-1],array[j]
            else  
                break 
            end 
            j -= 1
        end 
    end 
    array 
end 

print insertionsort([12, 11, 13, 5, 6])