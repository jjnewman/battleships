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


	
end