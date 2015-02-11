# require 'board'

class Player

  attr_reader :board

  def add_board(board)
    @board = board
  end

  def shoot_at(square)
    board.get_shot_at("a1")
  end

end