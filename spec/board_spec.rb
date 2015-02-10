require 'board'


describe Board do

let(:board) {Board.new}


class Board
  def cell_count
   BOARD.count
  end
end

	it 'should have 100 cells' do
		expect(board.cell_count).to eq 100
	end

  xit 'should be able to place a ship' do
    board.place_ship_in("a1")
  end

  

    


end