require './lib/renter'
require './lib/apartment'

class Building
  attr_reader :units, :renters, :rented_units
  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(apartment)
    @units << apartment
  end

  def add_renter(renter)
    @renters << renter
  end

  def average_rent
    @units[:monthly_rent].sum / @units[:monthly_rent].length.to_f
  end

  def rented_units
  end

  def highest_rent
  end
end
