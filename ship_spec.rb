require 'ship'


describe Ship do
	let(:ship){ship.new}

	it 'knows how big it is' do
		expect(ship.length).to eq 3
	end

	it 'knows that a submarine is 2' do
		#to correct magic number	
		submarine = Ship.submarine
		#submarine = Ship.new(2)
		expect(submarine.length).to eq 2
	end

	it 'knows that an aircraft_carrier has a legth of 5' do
		expect(Ship.aircraft_carrier.length).to eq 5	
	end

	it 'can be hit' do
		ship.hit!
		#access a private method - shouldn't be testing
		expect(ship.send(:hits)).to eq 1
	end

	it 'should know if a ship is sunk' do
		ship = Ship.new(1)
		#ship.hit
		expect(ship.sunk?).to eq false
	end

	it 'should know if a ship is sunk is hit' do
		ship = Ship.new(1)
		ship.hit
		expect(ship).to be_sunk

	end

end

