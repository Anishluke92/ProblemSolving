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
  # method returns 0 if tie
  # negative number if player0 wins
  # positive number if player1 wins

  player0 = game[0]
  player1 = game[1]

  #  we can quickly figure out if they both played the same
  return 0 if player0 == player1

  # list of what beats what
  beats = {
    'R': 'S', # rock beats scissors
    'P': 'R',
    'S': 'P'
  }

  # if what player0 played beats what player1 played, then player 0 wins
  if beats[player0.to_sym] == player1
    return -1
  else
    return 1
  end
end


def calculate_score(games)
  return "No game played" if games.empty?

  # negative number = player0 wins
  # 0 = tie
  # positive number = player1 wins
  result = 0

  games.each do |game|
    result += who_wins(game)
  end

  if result == 0
    "TIE"
  elsif result < 0
    "Abigail"
  else
    "Ben"
  end
end


print calculate_score([["R", "P"], ["R", "S"], ["S", "P"]]) # ➞ "Abigail"
puts ""
print calculate_score([["R", "R"], ["S", "S"]]) # ➞ "Tie"
puts ""
print calculate_score([["S", "R"], ["R", "S"], ["R", "R"]]) # ➞ "Tie"
puts ""
print calculate_score([["R","S"]])
puts ""
