require 'ship'

describe Ship do

  let(:ship) { Ship.new }

	it 'should have length' do
    expect(ship.size).to eq(1) 
	end

  it 'should be able to create a destroyer' do 
     ship = Ship.battleship
     expect(ship.size).to eq(5)
  end
end