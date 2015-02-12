class Board

  attr_accessor :board
  attr_reader :made_shots

  def initialize
    @board = generate_board
    @made_shots = []
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
    raise "#{square} has already been targeted! Please shoot again" if made_shots.include? square
    contents_at(square) == :water ? board[square] = :miss : contents_at(square).hit
    made_shots << square
  end  
  
  def cell_count
    board.count
  end

  def all_squares
    board.keys
  end 


  def place_horizontal(square, ship)
    row_array = board.keys.each_slice(10).to_a.transpose
    row = row_array.select{|row| row.include? square}.flatten
    index = row.index(square)  
    ship_locations = row.slice(index, ship.size)

    ship_locations.each do |location|
        place(ship, location)
    end
  end
end