class Game

  attr_reader :player_one , :player_two, :winner

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
    check_for_winner
  end

  def check_for_winner
    if player_one.opponents_board.all_ships_sunk?
      @winner = player_one
    elsif player_two.opponents_board.all_ships_sunk?
      @winner = player_two
    end
  end 
end

