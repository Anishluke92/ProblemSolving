def linearSearch(array,target)
    array.each do |item|
       return item if item == target 
       return "Not found !"
    end 
end 

print linearSearch([1, 3, 6, 8, 12, 14, 15, 20, 142],13)