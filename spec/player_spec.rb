require 'player'

describe Player do

  let(:player) {Player.new}

  it 'shoud be able to place a ship on board' do
    expect(player.place(ship, "a1")).to eq(true)
  end

end