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

end