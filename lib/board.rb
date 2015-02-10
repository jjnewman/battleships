require 'cell'

class Board

BOARD = {}
["a","b","c","d","e","f","g","h","i","j"].each do |letter|
  (1..10).each do |number|
    BOARD[letter + number.to_s] = Cell.new
  end
end

end