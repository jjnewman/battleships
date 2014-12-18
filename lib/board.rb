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
    return cell.first
  end

  def add_ship(ship, cell_position)
    requested_cell = find_cell(cell_position)
    requested_cell.add_ship(ship)
  end

  def add_ship_verticle(ship, cell_position)
    add_ship(ship, cell_position)
    cell_letter = cell_position.scan((/[a-z]/)).first 
    cell_number = cell_position.scan((/\d/)).first
    new_cell_number = cell_number.succ
    ((ship.size) - 1).times do
      add_ship(ship, ("#{cell_letter}" + "#{new_cell_number}"))
      new_cell_number = new_cell_number.succ
    end
  end   

  def hit_cell(cell_position)
    cell = find_cell(cell_position)
    cell.hit
  end

 
end