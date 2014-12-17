require 'board'
require 'cell'

describe Board do  

  let(:ship) { double :ship, size: 1 }
  let(:cell) { Cell.new }
  let(:board) { Board.new }



  it 'can generate a board' do  
    # expect{board.generate}.to change{count_cells(board)}.by 100
  end

  it 'can place ship' do
    # board.add_ship(ship, 'a1')
    # expect(board.find_cell('a1')).to eq(ship)

  end

  # helper methods

  # def count_cells(board)
  #   board.cells.count
  # end


end