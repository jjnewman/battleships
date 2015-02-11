require 'ship'

describe Ship do


  it "should increase the hit count by one when it's hit" do
    ship = Ship.new
    expect(ship.hit_count).to eq 0
    ship.hit
    expect(ship.hit_count).to eq 1
  end

end