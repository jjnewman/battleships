require 'board'

describe Board do  

  let(:ship) { double :ship, size: 1 }
  let(:cell) { double :cell, name: 'a1', contains: ship }
  let(:board) { Board.new }

  it 'can place ship' do
    # add ship to cell
    # add cell to board
    board.add_ship
    expect(cell.contains).to eq(ship)
  end

    # place ship
    # check ship position



end