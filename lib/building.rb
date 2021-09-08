class Building

  attr_reader :units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
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

  def average_rent
    rent_total = 0
    @units.each do |unit|
      rent_total += unit.monthly_rent
    end
    average_rent = (rent_total.to_f / (@units.length).to_f).round(1)
  end

  def rented_units
    @units.each do |unit|
      if unit.renter != nil
        @rented_units.push(unit)
      end
    end
    @rented_units
  end

  def renter_with_highest_rent
    renter = 0
    max_rent = 0
    @units.each do |unit|
      if unit.monthly_rent > max_rent
        max_rent = unit.monthly_rent
        renter = unit.renter
      end
    end
    renter
  end

end
