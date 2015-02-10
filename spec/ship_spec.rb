require 'ship'

describe Ship do

let(:ship){Ship.new}

	it 'should have no hits when created' do
		expect(ship.hit_count).to eq 0
	end

	it 'should be able to be hit' do
		ship.hit!
		expect(ship.hit_count).to eq 1
	end

  it 'should have a size, set on initialising' do
    new_ship = Ship.new(3)
    expect(new_ship.size).to eq 3
  end 
	
end