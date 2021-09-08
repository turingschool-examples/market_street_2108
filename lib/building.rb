class Building
  attr_reader   :units,
                :renters,
                :rented_units

  def initialize
    @units        = []
    @renters      = renters
    @rented_units = rented_units
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    total = @units.sum do |unit|
      unit.monthly_rent
    end
    total / 2.to_f
  end

  def renters
    @units.filter_map do |unit|
      if unit.renter != nil
        unit.renter.name
      end
    end
  end

  def rented_units
    units.filter_map do |unit|
      if unit.renter != nil
        unit
      end
    end
  end

  def renter_with_highest_rent
    rented_units.max_by do |unit|
      unit.monthly_rent
    end.renter
  end

  def units_by_number_of_bedrooms
    new = {}
    units.each do |unit|
      if new[unit.bedrooms] == nil
        new[unit.bedrooms] = [unit.number]
      else
        new[unit.bedrooms] << unit.number
      end
    end
    new
  end
end
