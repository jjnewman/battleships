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

  it 'can place ship a ship of size 1' do
    board.add_ship(ship, 'a1')
    expect(board.find_cell('a1').contents).to eq(ship)
  end

  # # helper methods

  def count_cells(board)
    board.cells.count
  end


end