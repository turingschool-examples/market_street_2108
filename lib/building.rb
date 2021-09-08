class Building
  attr_reader :units,
              :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(new_units)
    @units.push(new_units)
  end

end
