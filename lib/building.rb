class Building
  attr_reader :units,
              :renters,
              :average_rent,
              :rented_units
  def initialize
    @units = []
    @renters = []
    @average_rent = 1099.5
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(renter)
    @renters << renter
  end

  def unavailable_units
    all_units = {}

    @units.each do |unit|
      unit.renters.each do |renter|
        if all_units[unit].nil?
          all_units[unit.rented_units] = []
        end
        all_units[unit.rented_units] << renter
      end
    end
    all_units
  end
  require "pry"; binding.pry
end
