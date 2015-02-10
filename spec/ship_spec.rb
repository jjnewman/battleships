require 'ship'

describe Ship do

let(:ship)      {Ship.new}
let(:destroyer) {Ship.new(3)}

	it 'should have a size, can be set on initialising' do
    expect(destroyer.size).to eq 3
  end 

  it 'should have a default size of one' do
  	expect(ship.size).to eq 1
  end

  it 'should have no hits when created' do
		expect(ship.hit_count).to eq 0
	end

	it 'should be able to be hit' do
		ship.hit!
		expect(ship.hit_count).to eq 1
	end

	it 'should be floating on creation' do 
		expect(ship).to be_floating
	end

  it 'should know when it is sunk' do
    destroyer.size.times { destroyer.hit! }
    expect(destroyer).to_not be_floating
  end

  xit 'has a position when created' do


  end

  xit 'can be missed' do


  end	

  xit 'will not be hit when missed' do


  end


end