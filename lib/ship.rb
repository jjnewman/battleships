class Ship

  attr_reader :size

  def initialize(size = 1)
    @size = size
    @hit_count = 0 
  end

  def hit
    if @hit_count == @size
      raise "Ship already sunk!"
    else
      @hit_count += 1
    end 
  end

  def hit? 
    @hit_count > 0 
  end

  def sunk?
    @hit_count == @size
  end

  def self.aircraft_carrier
    new(5)
  end

  def self.battleship 
    new(4)
  end

  def self.submarine
    new(3)
  end

  def self.destroyer
    new(3)
  end

  def self.patrol_boat
    new(2)
  end

end