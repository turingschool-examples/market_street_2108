require './lib/renter'
require './lib/apartment'

class Building

  attr_reader :units, :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def cal_renters
    renters_array = []
    @units.each do |unit|
      renters_array << unit.renter.name
    end

    return renters_array

  end
  #
  # def rented_units
  #   array = []
  #
  # end
end
