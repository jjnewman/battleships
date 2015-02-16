class Player

  attr_reader :board, :opponents_board

  def add_board(board)
    @board = board
  end

  def place(ship, square, direction)
    if direction == :vertical
      board.place_vertical(square, ship) 
    elsif direction == :horizontal
      board.place_horizontal(square, ship)
    else
      raise "please specify ':horizontal' or ':vertical' in third argument"
    end
  end

  def shoot_at(square)
    opponents_board.get_shot_at(square)
  end

  def add_opponent(board)
    @opponents_board = board
  end

end