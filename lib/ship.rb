class Ship

  attr_reader :hit_count

  def initialize
    @hit_count = 0
  end

  def hit!
    @hit_count += 1
  end


end