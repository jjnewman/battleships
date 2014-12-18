require './lib/cell'

class Board

  attr_reader :cells

  def initialize
    @cells = [] 
    generate
  end

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
    if requested_cell.nil?
      raise "That ship does not fit"
    elsif requested_cell.contains_ship?
      raise "That cell contains a ship!"
    else
      requested_cell.add_ship(ship)
    end
  end

  def add_ship_vertical(ship, cell_position)
    cell_letter = cell_position.scan((/[a-z]/)).first 
    cell_number = cell_position.scan((/\d/)).first
    new_cell_number = cell_number.succ
    ((ship.size) - 1).times do
      add_ship(ship, ("#{cell_letter}" + "#{new_cell_number}"))
      new_cell_number = new_cell_number.succ
    end
    add_ship(ship, cell_position)
  end   

  def add_ship_horizontal(ship, cell_position)
    cell_letter = cell_position.scan((/[a-z]/)).first 
    cell_number = cell_position.scan((/\d/)).first
    new_cell_letter = cell_letter.succ
    ((ship.size) - 1).times do
      add_ship(ship, ("#{new_cell_letter}" + "#{cell_number}"))
      new_cell_letter = new_cell_letter.succ
    end
    add_ship(ship, cell_position)
  end  

  def hit_cell(cell_position)
    cell = find_cell(cell_position)
    cell.hit
  end

 
end