class Ship

  attr_reader :hit_count, :size

  def initialize(size=1)
    @hit_count = 0
    @size = size
  end

  def self.patrol_boat
    new(2)
  end

  def self.destroyer
    new(3)
  end

  def self.submarine
    new(3)
  end

  def self.battleship
    new(4)
  end

  def self.aircraft_carrier
    new(5)
  end

  def hit
    @hit_count += 1
  end



end