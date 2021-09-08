class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    units << unit
  end

  def renters
    @units.map do |unit|
      unit.renter.name
    end
  end

  def average_rent
    total_units = units.length.to_f
    average_rent = (combined_rent / total_units).round(1)
  end

  def combined_rent
    combined_rent = 0
    @units.each do |unit|
      combined_rent += unit.monthly_rent
    end
    combined_rent.to_f
  end

  def rented_units
    rented_units = []
    units.each do |unit|
      if unit.renter != nil
        rented_units << unit
      end
    end
    rented_units
  end

  def renter_with_highest_rent
    (filtered_units.max { |u1, u2| u1.monthly_rent <=> u2.monthly_rent }).renter
  end

  def filtered_units
    filtered_units = []
    units.each do |unit|
      if unit.renter != nil
        filtered_units << unit
      end
    end
    filtered_units
  end

  def units_by_number_of_bedrooms
  number_of_bedrooms = {}
    units.each do |unit|
      if number_of_bedrooms[unit.bedrooms] == nil
        number_of_bedrooms[unit.bedrooms] = [unit.number]
      else
        number_of_bedrooms[unit.bedrooms] << unit.number
      end
    end
  number_of_bedrooms
  end

  def annual_breakdown
    breakdown = {}
    filtered_units.each do |unit|
      breakdown[unit.renter.name] = (unit.monthly_rent * 12)
    end
    breakdown
  end

  def rooms_by_renter
    renters_and_rooms = {}
    filtered_units.each do |unit|
      renters_and_rooms[unit.renter] = {bathrooms: unit.bathrooms, bedrooms: unit.bedrooms}
    end
    renters_and_rooms
  end
end
