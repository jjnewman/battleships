require 'ship'

describe Ship do

  let(:ship) { Ship.new }

	it 'should have length' do
    expect(ship.size).to eq(1) 
	end

  it 'should get hit' do
    ship.hit
    expect(ship).to be_hit
  end

  it 'should get sunk' do
    ship.hit
    expect(ship).to be_sunk
  end

  
end