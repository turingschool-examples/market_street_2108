class Building

  def initialize
    # @apartment = Apartment.new
    @units = []
    @renters = []
  end

  def units
    @units
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @renters
  end

  def add_renter(renter)
    @renters << renter.name
  end

  def average_rent
    rent1 = @units[0].monthly_rent.to_f
    rent2 = @units[1].monthly_rent.to_f
    (rent1 + rent2) / 2
  end

  def building.rented_units
  end

end
