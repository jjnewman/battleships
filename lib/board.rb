class Board

BOARD = {}
["a","b","c","d","e","f","g","h","i","j"].each do |letter|
  (1..10).each do |number|
    BOARD[letter + number.to_s] = :water
  end
end

	def place(ship, square)
		BOARD[square] = ship

	end

	def contents_at(square)
		BOARD[square]

	end
  
end