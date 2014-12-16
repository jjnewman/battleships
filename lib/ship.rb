class Ship

  attr_accessor :size

  def initialize
    @size = 1
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

end