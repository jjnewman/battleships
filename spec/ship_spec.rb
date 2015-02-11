require 'ship'

describe Ship do


  it "should increase the hit count by one when it's hit" do
    ship = Ship.new
    expect(ship.hit_count).to eq 0
    ship.hit
    expect(ship.hit_count).to eq 1
  end

  it "should be size 1 by default" do
    ship = Ship.new
    expect(ship.size).to eq 1
  end

  it 'can be created as a patrol boat' do
    patrol_boat = Ship.patrol_boat
    expect(patrol_boat.size).to eq 2
  end

  it 'can be created as a destroyer' do
    destroyer = Ship.destroyer
    expect(destroyer.size).to eq 3
  end

  it 'can be created as a submarine' do
    submarine = Ship.submarine
    expect(submarine.size).to eq 3
  end

  it 'can be created as a battleship' do
    battleship = Ship.battleship
    expect(battleship.size).to eq 4
  end

  it 'can be created as an aircraft carrier' do
    aircraft_carrier = Ship.aircraft_carrier
    expect(aircraft_carrier.size).to eq 5
  end

  it "should be able to sink a default ship with one hit" do
    ship = Ship.new
    ship.hit
    expect(ship).to be_sunk
  end

  it "should be able to sink a patrol boat with two hits" do
    patrol_boat = Ship.patrol_boat
    2.times { patrol_boat.hit }
    expect(patrol_boat).to be_sunk
  end


end