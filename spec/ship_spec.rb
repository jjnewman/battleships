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

  it 'should get sunk when hit count is equal to size' do
    ship = Ship.battleship
    5.times { ship.hit }
    expect(ship).to be_sunk
  end

  it "should not exceed it's hit count if sunk" do
    ship = Ship.battleship
    expect{6.times { ship.hit } }.to raise_error(RuntimeError, "Ship already sunk!")
  end

  it 'should be able to create an aircraft carrier' do 
    ship = Ship.aircraft_carrier
    expect(ship.size).to eq(5)
  end

  it 'should be able to create a battleship' do 
     ship = Ship.battleship
     expect(ship.size).to eq(4)
  end

  it 'should be able to create an submarine' do 
    ship = Ship.submarine
    expect(ship.size) to eq(3)
  end

  it 'should be able to create a destroyer' do 
    ship = Ship.destroyer
    expect(ship.size) to eq(3)
  end

  it 'should be able to create a patrol boat' do 
    ship = Ship.patrol_boat
    expect(ship.size) to eq(2)
  end


end