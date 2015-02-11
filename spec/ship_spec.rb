require 'ship'

describe Ship do


  it "should increase the hit count by one when it's hit" do
    ship = Ship.new
    expect(ship.hit_count).to eq 0
    ship.hit
    expect(ship.hit_count).to eq 1
  end

  it 'can be created as a patrol boat' do
    patrol_boat = Ship.patrol_boat
    expect(patrol_boat.size).to eq 2
  end



  xit "should be able to sink a ship of length one with one hit" do
    ship = Ship.new
    ship.hit
    expect(ship).to be_sunk
  end

  xit "should be able to sink a ship of length two with two hits" do
    ship = Ship.new
    expect(ship).to be_sunk
  end


end