class Building
  attr_reader :units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def <<(renter)
    @renters << renter
  end

  def renters
    renter_names = []
    @renters.each do |renter|
      renter_names << renter.name
    end
    renter_names
  end

  def average_rent
    unit1_rent = @units[0].details[:monthly_rent].to_f
    unit2_rent = @units[1].details[:monthly_rent].to_f

    (unit1_rent + unit2_rent) / @units.count
  end

  def rented_units
    @rented_units << 
  end
end
