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

  def add_renter(renter)
    @renters.push(renter)
  end

  def average_rent  #come back to this
    all_rent = []
    @units.find_all do |unit|
      all_rent << @unit.monthly_rent
    end
    all_rent / all_rent.count.to_f
  end
end
