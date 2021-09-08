require './lib/renter'
require './lib/apartment'

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

  def add_renter(rentee)
    @renters << rentee
  end

  def average_rent
    total_rent = 0
    @units.each do |unit|
      total_rent += unit.monthly_rent.to_f
    end
    total_rent / @units.length
  end

  def add_rented_units(unit)
    @rented_units << unit
  end

  def renter_with_highest_rent
    highest_renter = nil
    @units.each do |unit|
      if unit.renter != nil
        @units.max_by do |unit|
          highest_renter = renters
        end
      end
    end
    highest_renter
  end
end
