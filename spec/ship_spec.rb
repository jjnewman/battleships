require 'ship'

describe Ship do

  let(:ship) { Ship.new }

	it 'should have length' do
    expect(ship.size).to eq(1) 
	end
end