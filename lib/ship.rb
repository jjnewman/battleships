class Ship

  attr_reader :size

  def initialize(size = 1)
    @size = size
    @hit_count = 0
  end

  def self.battleship 
    new(5)
  end


end