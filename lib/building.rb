require './lib/apartment'

class Building
  attr_reader :units,
              :renters

  def initialize
    @units     = []
    @renters   = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters(add_renter)
    @renters << add_renter(renter)
  end

  # def average_rent
  #
  # end
end
