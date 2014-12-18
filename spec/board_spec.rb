require 'board'
# require 'cell'

describe Board do  

  let(:ship)  { double :ship, size: 1 }
  # let(:cell)  { Cell.new              }
  let(:board) { Board.new             }


  before(:each) do
    Cell.class_variable_set(:@@count, 0)
  end

  it 'can generate a board' do  
    expect{board.generate}.to change{count_cells(board)}.by 100
  end

  it 'can find a cell' do 
    required_cell = board.find_cell('a1')
    expect(required_cell.name).to eq('a1')
  end

  it 'can place a ship' do
    board.add_ship(ship, 'a1')
    expect(board.find_cell('a1').contents).to eq(ship)
  end

  it 'can hit a cell' do 
    ship = Ship.new
    board.add_ship(ship, "a2")
    board.hit_cell("a2")
    expect(board.find_cell("a2")).to be_hit
  end

  it 'can record a miss' do 
    ship = Ship.new
    board.hit_cell("a3")
    expect(board.find_cell("a3")).to be_miss
  end

  it 'can add a large ship vertically' do
    cargo_ship = Ship.new(2)
    board.add_ship_verticle(cargo_ship,"a1")
    expect(board.find_cell("a1").contents).to eq(cargo_ship) 
    expect(board.find_cell("a2").contents).to eq(cargo_ship) 
  end

  it 'should not add any part of the ship if the cell is occupied' do 
    ship = Ship.new(3)
    board.add_ship_verticle(ship, "a1")
    expect{board.add_ship(ship, "a2")}.to raise_error(RuntimeError, "That cell contains a ship!")
  end

  it 'should not be able to add a ship if there is not room on the board' do
    ship = Ship.new(3)
    expect{board.add_ship_verticle(ship, "a9")}.to raise_error(RuntimeError, "That ship does not fit")
  end


  # # helper methods

  def count_cells(board)
    board.cells.count
  end


end