require './lib/cell'

class Board

  attr_reader :cells

  def initialize
    @cells = [] 
    generate
  end

  # def make_cell
  #   cell = Cell.new
  # end

  def generate
    100.times { cell = Cell.new; @cells << cell }
  end

  def find_cell(cell_position)
    cell = cells.select do |cell|
      cell.name == cell_position
    end
    return cell.sample
  end

  def add_ship(ship, cell_position)
    requested_cell = find_cell(cell_position)
    requested_cell.add_ship(ship)
  end

  def hit_cell(cell_position)
    cell = find_cell(cell_position)
    cell.hit
  end

 
end