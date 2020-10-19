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

def who_wins(game)
  if game[0]== "R" && game[1]== "S"
    return 0
  elsif game[0]== "S" && game[1]== "P" 
    return 0
  elsif game[0]== "P" && game[1]== "R"
    return 0
  elsif game[0]== "S" && game[1]== "S" || game[0]== "R" && game[1]== "R" || game[0]== "P" && game[1]== "P"
    return "Tie"
  else
    return 1
  end
end


def calculate_score(game)
  result = []
  if game.length > 0
    game.each do |element|
     result.push(who_wins(element))
    end
    if result.count(0)> result.count(1)
      "Abigail"
    elsif result.count(0)== result.count(1)
      "TIE"
    else
      "Ben"
    end
  else
    return "No game played.. !"
  end 
end


print calculate_score([["R", "P"], ["R", "S"], ["S", "P"]])
puts ""
print calculate_score([["S", "R"], ["R", "S"], ["R", "R"]]) 
puts ""
print calculate_score([["R", "R"], ["S", "S"]])
puts ""
print calculate_score([])
puts ""
print calculate_score([["S", "R"], ["R", "S"], ["R", "R"]]) 





        