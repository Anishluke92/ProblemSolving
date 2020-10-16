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

def who_wins(player1, player2)

  if player1 > player2
    "Abigail" 
  elsif player1 == player2 
    "Tie"
  else
    "Ben"
  end
end

def calculate_score(game)
  abi = 0
  ben = 0

  if game.length > 0
    game.each do |element|
      if (element[0] == 'R') && (element[1] == 'S')
        abi += 1
      elsif(element[0]== 'S') && (element[1] == 'P')
        abi += 1
      elsif(element[0] == 'P') && (element[1] == 'R')
        abi += 1
      elsif(element[0] == 'S') && (element[1] == 'R')
        ben += 1
      elsif(element[0] == 'P') && (element[1] == 'S')
        ben += 1
      elsif(element[0] == 'R') && (element[1] == 'P')
        ben += 1
      elsif ((element[0] == 'R') && (element[1] == 'R')) || ((element[0]== 'S') && (element[1] == 'S')) || ((element[0] == 'P') && (element[1] == 'P'))
        abi += 0
        ben += 0
      end
    end
  else
    return "NO GAME HAS BEEN PLAYED..!!"
  end
  who_wins(abi, ben)
end


print calculate_score([["R", "P"], ["R", "S"], ["S", "P"]])
puts ""
print calculate_score([["S", "R"], ["R", "S"], ["R", "R"]])
puts ""
print calculate_score([["R", "R"], ["S", "S"]])
puts ""
print calculate_score([])





        
