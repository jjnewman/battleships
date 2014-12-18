class Ship

  attr_reader :size

  def initialize(size = 1)
    @size = size
    @hit_count = 0 
  end

  def hit
    @hit_count += 1 
  end

  def hit? 
    @hit_count > 0 
  end

  def sunk?
    @hit_count == @size
  end

  def self.battleship 
    new(5)
  end


end