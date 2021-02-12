def linearSearch(array,target)

    i = 0 
    while i < array.length 
        if array[i] == target 
            return "Found #{array[i]} at position #{i}"
        end 
        i += 1 
    end 
    "Number not found !"
end 


print linearSearch([1, 3, 6, 8, 12, 14, 15, 20, 142],13)