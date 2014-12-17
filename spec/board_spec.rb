require 'board'
require 'cell'

describe Board do  

  let(:ship) { double :ship, size: 1 }
  let(:cell) { double :cell, name: 'a1' }
  let(:board) { Board.new }



  it 'can generate a board' do  
    allow(board).to receive(:make_cell).and_return(cell)
    expect{board.generate}.to change{count_cells(board)}.by 100
  end

  it 'can place ship' do
    # board.add_ship(ship, 'a1')
    # expect(board.find_cell('a1')).to eq(ship)

  end

  # helper methods

  def count_cells(board)
    board.cells.count
  end


end