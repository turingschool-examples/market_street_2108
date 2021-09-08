require './lib/renter'
require './lib/apartment'

class Building
  attr_reader :units,
              :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units.push(unit)
  end

  def add_renter(occupant)
    @renters.push(occupant)
  end

  def average_rent
    count = 0.0
    total = 0.0
    @units.each do |unit|
      total += unit.monthly_rent
      count += 1
    end
    average = (total / count).to_f.round(2)
    average
  end

  def rented_units
    @rented_units = []

    @units.each do |unit|
      if unit.renter != nil
        @rented_units << unit
      end
    end
    @rented_units
  end

  def renter_with_highest_rent
    @rented_units.max_by{|unit| unit.monthly_rent}
  end
end
