=begin
Abigail and Benson are playing Rock, Paper, Scissors.

Each game is represented by an array of length 2, where the first element represents what Abigail played and the second element represents what Benson played.

Given a sequence of games, determine who wins the most number of matches. If they tie, output "Tie".

R stands for Rock
P stands for Paper
S stands for Scissors

Examples
calculate_score([["R", "P"], ["R", "S"], ["S", "P"]]) ➞ "Abigail"

# Ben wins the first game (Paper beats Rock).
# Abigail wins the second game (Rock beats Scissors).
# Abigail wins the third game (Scissors beats Paper). 
# Abigail wins 2/3.

calculate_score([["R", "R"], ["S", "S"]]) ➞ "Tie"

calculate_score([["S", "R"], ["R", "S"], ["R", "R"]]) ➞ "Tie"
=end

def calculate_score(array)
  abigail = 0
  ben = 0
 
  array.each do  |game|
    game.each_with_index do |played, index|
      
      if game.include?("R") && game.include?("S")
        if (index == 0 && played == "R" ) 
          abigail += 1
        else
          ben += 1
        end
        
      elsif game.include?("S") && game.include?("P")
        if (index == 0 && played == 'S') 
          abigail += 1 
        else 
          ben += 1
        end

      elsif game.include?("P") && game.include?("R")
        if (index == 0 && played == 'P') 
          abigail += 1 
        else
          ben += 1
        end
      else 
        ben += 0
        abigail += 0
      end
    end
    
  end
 "#{ben}, #{abigail}"

end
 


print  calculate_score([["R", "P"], ["S", "R"], ["S", "P"]])
