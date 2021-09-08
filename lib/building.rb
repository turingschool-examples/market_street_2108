class Building

  attr_reader :units

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units.push(unit)
  end

  def renters
    @units.each do |unit|
      @renters.push(unit.renter.name)
    end
  @renters
  end

end
