class Cell

  attr_reader :content

  def initialize
    @content = :water
  end

  def add(ship)
    @content = ship
  end

end