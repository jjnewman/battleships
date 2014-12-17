require './lib/cell'

class Board

  attr_reader :cells

  def initialize
    @cells = [] 
  end

  def generate
    100.times { @cells << Cell.new } 
  end

  # the cells could have a method of keeping track of their name and position 

  def add_ship(ship, cell_position)
    requested_cell = find_cell(cell_position)
    requested_cell.sample.add_ship(ship)
  end

  def find_cell(cell_position)
    @cells.select do |cell|
      cell.name == cell_position
    end
  end 

end