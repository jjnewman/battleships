require 'board'


describe Board do

let(:board) {Board.new}
let(:ship)  {double :ship}


class Board
  def cell_count
   BOARD.count
  end
end

	it 'should have 100 cells' do
		expect(board.cell_count).to eq 100
	end

  it 'can place a ship on a1 square' do
    board.place(ship, "a1")
    expect(board.contents_at("a1")).to eq ship
  end

end