class Building
  attr_reader :renters,
              :units,
              :rented_units

  def initialize(units = [], renters = [], rented_units = [])
    @units = units
    @renters =renters
    @rented_units = rented_units
  end

  def add_unit(unit)
    units << unit
  end

  def renters
    list_of_renters = []
    @units.each do |unit|
      list_of_renters << unit.renter
     end
    list_of_renters
  end

  def average_rent
    average = []
    @units.each do |unit|
      average << unit.monthly_rent
      end
    ((average.sum).to_f / (average.count).to_f).round(2)
  end

  def rented_units
    list_of_rented_units = []
      @units.each do |unit|
        if unit.renter != nil
          list_of_rented_units << unit
        end
      end
    list_of_rented_units
  end

end
