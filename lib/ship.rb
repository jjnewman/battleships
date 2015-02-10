class Ship

  attr_reader :hit_count , :size
  
  def initialize(*size)
    @hit_count = 0
    @size = size.join.to_i
  end

  def hit!
    @hit_count += 1
  end


end