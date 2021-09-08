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
    require "pry"; binding.pry
    @units.each do |unit|
      @renters << unit.name
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
end
