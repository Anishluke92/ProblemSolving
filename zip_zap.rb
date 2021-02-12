=begin 
Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and ending with 'p'. 
Return a string where for all such words, the middle letter is gone, so "zipXzap" yields "zpXzp".

zipZap("zipXzap") → "zpXzp"
zipZap("zopzop") → "zpzp"
zipZap("zzzopzop") → "zzzpzp"
=end 



def zipZap(string)
    string = string.split("")

    string.each_with_index do |char, index| 
        string.delete_at(index+1) if char == "z" && string[index+2] == "p"      
    end
    string.join('')
end 
print zipZap("zipXzap")
puts ""
print zipZap("zopzop")
puts ""
print zipZap("zzzopzop")