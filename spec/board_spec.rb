require 'board'
require 'cell'

describe Board do  

  # the problem is that the cell is a double and doesn't know what contains is

  let(:ship) { double :ship, size: 1 }
  let(:cell) { Cell.new }
  let(:board) { Board.new }

  it 'can place ship' do
    # add ship to cell
    # add cell to board
    board.add_ship(ship, 'a1')
    expect(board.find_cell('a1')).to eq(ship)
  end


end