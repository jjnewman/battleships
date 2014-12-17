require './lib/cell'

class Board

  attr_reader :cells

  def initialize
    @cells = [] 
  end

  def make_cell
    cell = Cell.new
  end

  def generate
    make_cell
    100.times { @cells << make_cell }
  end


end