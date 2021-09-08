class Building
  attr_reader :units

  def initialize
    @units    = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    rented_units.map do |unit|
      unit.renter.name
    end
  end

  def average_rent
    sum = 0

    @units.each do |unit|
      sum += unit.monthly_rent
    end

    sum.to_f / @units.size
  end

  def rented_units
    if @units == []
      rented_units = []
    else
      rented_units = @units.map do |unit|
        if unit != nil && unit.renter != nil
          unit
        end
      end
    end
    rented_units.compact
  end

  def renter_with_highest_rent
    most_expensive_occupied_unit = rented_units.max_by do |unit|
      unit.monthly_rent
    end

    most_expensive_occupied_unit.renter
  end



  def units_by_number_of_bedrooms
    units_by_bedrooms = {}

    @units.each do |unit|
      if units_by_bedrooms[unit.bedrooms].nil?
        units_by_bedrooms[unit.bedrooms] = []
      end
      units_by_bedrooms[unit.bedrooms] << unit.number
    end

    units_by_bedrooms
  end
end
