# intialises with water so when creating board... create cells first then add ships. 
class Cell 

  attr_reader :name
  attr_reader :contents

  def initialize(name)
    @name = name
    @contents = 'water'
  end

  def add_ship(ship)
    @contents = ship
  end

end

