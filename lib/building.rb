class Building
  attr_reader :renters,
              :units

  def initialize(units = [], renters = [])
    @units = units
    @renters = renters
  end

  def add_unit(unit)
    units << unit
  end

  def renters
    list_of_renters = []
    units.each do |unit|
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
end
