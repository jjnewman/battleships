class Board

  attr_reader :cells

  def initialize

    @cells = [] 

  end

  def add_ship(ship, cell_position)

    # we have a cell in the board
    # ship needs to be stored in a cell 
    # we need to read cells
    # and place where requested
    # we need to add that cell to the cells

    requested_cell = find_cell(cell_position)
    requested_cell.sample.add_ship(ship)
  end

  def find_cell(cell_position)
    @cells.select do |cell|
      cell.name == cell_position
    end
  end 

  

end