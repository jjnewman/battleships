require 'board'

describe Board do

let(:board) {Board.new}
let (:ship)  {double :ship}

	it 'should have 100 cells' do
		expect(board.cell_count).to eq 100
	end

  it 'should be filled with water at the beginning' do
    board.all_squares.each do |square|
      expect(board.contents_at(square)).to eq :water
    end
  end

  it 'can place a ship on a1 square' do
    board.place(ship, "a1")
    expect(board.contents_at("a1")).to eq ship
  end

  it "returns miss when it hits water" do
    board.get_shot_at("a1")
    expect(board.contents_at("a1")).to eq :miss
  end

  it "returns 'hit' when hit's ship at a1" do
    board.place(ship, "a1")
    expect(ship).to receive(:hit)
    board.get_shot_at("a1")
  end

  it "should not allow multiple shots at same empty square" do
    board.get_shot_at("a1")
    expect{board.get_shot_at("a1")}.to raise_error "a1 has already been targeted! Please shoot again"
  end

  it "should not allow multiple shots at same occupied square" do
    board.place(ship, "a1")
    expect(ship).to receive(:hit)
    board.get_shot_at("a1")
    expect{board.get_shot_at("a1")}.to raise_error "a1 has already been targeted! Please shoot again"
  end
  

end