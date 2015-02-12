require 'board'

describe Board do

let(:board) {Board.new}
let (:ship)  {double :ship}
let (:battleship) {double :battleship, size: 4}
let (:aircraft_carrier) {double :aircraft_carrier, size: 5}

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

  it "should be able to place a horizontal battleship in a1" do
    board.place_horizontal("a1", battleship)
    expect(board.contents_at("a1")).to eq battleship
    expect(board.contents_at("b1")).to eq battleship
    expect(board.contents_at("c1")).to eq battleship
    expect(board.contents_at("d1")).to eq battleship
  end

  it "should be able to place a vertical aircraft carrier in a1" do
    board.place_vertical("a1", aircraft_carrier)
    expect(board.contents_at("a1")).to eq aircraft_carrier
    expect(board.contents_at("a2")).to eq aircraft_carrier
    expect(board.contents_at("a3")).to eq aircraft_carrier
    expect(board.contents_at("a4")).to eq aircraft_carrier
    expect(board.contents_at("a4")).to eq aircraft_carrier
  end

  it "should not allow a ship to go over the boundary of the board" do
    expect{board.place_horizontal("j1", battleship)}.to raise_error "No room for ship! Please select another square."
    expect contents_at("j1").to eq :water
  end
end