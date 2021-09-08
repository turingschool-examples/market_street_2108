require 'apartment'

class Building
  attr_reader :units,
              :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renters
    require "pry"; binding.pry
    @units.each do |unit|
      @renters << unit[:renter]
    end
  end
end
