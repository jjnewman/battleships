require 'board'
require 'rspec/collection_matchers'


describe Board do

let(:board) {Board.new}


	it 'should have 100 cells' do
		expect(board.cell_count).to eq 100
	end
  

    


end