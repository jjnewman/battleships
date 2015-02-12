class Game

  attr_reader :player_one , :player_two, :winner

  def initialize
    @winner = nil
  end

  def add_players(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def turn
    @turn ||= player_one
  end

  def end_turn
    turn
    if @turn == player_one
      @turn = player_two
    elsif @turn == player_two
      @turn = player_one
    end
  end

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