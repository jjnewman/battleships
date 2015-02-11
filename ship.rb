class Ship

#can use SIZES hash with lengths

attr_reader :length

def initialize(length = 3)
	@length = length
	@hits = 0
end

#class method
def self.submarine
	new(2)
end

def self.aircraft_carrier
	new 5
end

#bang method.....ship stays hit (modifies/changes the state of the object)
def hit!
	@hits += 1
end

def sunk?
	hits >= length
end

private
#not being used by the outside world (other classes)
#set to private after testing

def hits
	@hits
end

end