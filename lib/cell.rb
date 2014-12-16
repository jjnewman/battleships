# intialises with water so when creating board... create cells first then add ships. 
class Cell 

  attr_reader :name
  attr_reader :contains

  def initialize(name)
    @name = name
    @contains = 'water'
  end

  def add_ship(ship)
    @contains = ship
  end

end

