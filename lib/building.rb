require 'apartment'

class Building
  attr_reader :units,
              :renters,
              :rented_units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renters
    @units.each do |unit|
      if unit.name != nil
        @renters << unit.name
      end
    end
  end

  def average_rent
    sum = 0.0
    total = @units.size
    @units.each do |unit|
      sum += unit.monthly_rent
    end
    sum / total
  end

  def rented_units
    @units.find_all do |unit|
      unit.renter != nil
    end
  end
end
