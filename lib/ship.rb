class Ship

  attr_reader :hit_count , :size
  
  def initialize(*size)
    @floating = true
    @hit_count = 0
    size == [] ? @size = 1 : @size = size.join.to_i
  end

  def hit!
    @hit_count += 1
  end

	def floating?
		size > hit_count 
	end  

end