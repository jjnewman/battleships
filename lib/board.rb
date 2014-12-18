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


  # we need to be able to look up cells and add ship objects
  # horizontal vs verticle

  def add_ship(ship, cell_position)
    requested_cell = find_cell(cell_position)
    requested_cell.add_ship(ship)
  end

  # a1, a2, a3, a4, a5
  # find desired cell
  # split number from cell and split letter
  # if length is 5 add to 5 cells below =  add to all (cell_position + (length - 1))
  # whatever that number is add 1, 1, 1, 1, 1 

  def add_big_ship_verticle(ship, cell_position)
    # cell_position.add_ship(ship)
    
    # [1,2,3,4,5]
    # if cell_number = 1 
    #   array = [(cell_number)..(cell_number + ship.size)]
    # else 

    # 2 
    # (cell_position..(ship.size))

    # 5 

    # ship.size.inject { |memo, number| number - 1 }

    cell_letter = cell_position.scan((/[a-z]/).first) 
    cell_number = cell_position.scan((/\d/).first)
  end


  def hit_cell(cell_position)
    cell = find_cell(cell_position)
    cell.hit
  end

 
end