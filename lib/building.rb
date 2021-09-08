class Building
  attr_reader :building,
              :units

  def initialize
    @building = building
    @units = []
  end

  def add_units(unit)
    @units << unit
  end 
end
