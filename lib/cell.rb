# intialises with water so when creating board... create cells first then add ships. 
require './lib/ship'

class Cell 

  # this is a class variable and counts every time a cell is made
  @@count = 0

  attr_reader :name
  attr_reader :contents

  def initialize
    @contents = 'water'
    cell_name
    @@count += 1 
    @hit = false
    @miss = false
  end

  def cell_name
    @name = all_cell_names[@@count]
  end
  
  def all_cell_names
    letters_array = ("a".."j").to_a
    numbers_array = (1..10).to_a
    numbers_and_letters_array = []

    letters_array.map do |letter|
      numbers_array.map do |number|
        numbers_and_letters_array << (letter + "#{number}")
      end
    end

    return numbers_and_letters_array
  end

  def add_ship(ship)
    @contents = ship
  end

  def contains_ship?
    @contents.instance_of? Ship
  end

  def hit
    if contains_ship?
      @contents.hit
      @hit = true
    else
      @miss = true
    end
  end

  def hit?
    @hit
  end

  def miss? 
    @miss
  end

end

