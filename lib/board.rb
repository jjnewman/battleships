class Board

  attr_accessor :board

  def initialize
    @board = generate_board
  end

  def generate_board
    board = {}
    ["a","b","c","d","e","f","g","h","i","j"].each do |letter|
      (1..10).each do |number|
        board[letter + number.to_s] = :water
      end
    end
    board
  end

	def place(ship, square)
		board[square] = ship
	end

	def contents_at(square)
		board[square]
	end

  def get_shot_at(square)
    if contents_at(square) == :water
      board[square] = :miss
    else 
      contents_at(square).hit
    end
  end  
  
  def cell_count
    board.count
  end

  def all_squares
    board.keys
  end 

end