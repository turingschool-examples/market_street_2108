class Building

  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units.push(unit)
  end
  
end
