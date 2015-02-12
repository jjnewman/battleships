class Game

attr_reader :player_one , :player_two, :winner

def initialize
  @winner = nil
end

def add_players(player1, player2)
  @player_one = player1
  @player_two = player2
end

# def winner? player
#   player.opponents_board.all_sunk?
# end

# def check_winner

#     if winner? player1
#     @winner = player1
#     end
  
#     if winner? player2
#     @winner = player2
#     end

end