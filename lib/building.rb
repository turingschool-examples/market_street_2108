class Building
  attr_reader :units

  def initialize
    @units    = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    renters = @units.map do |unit|
      if unit.renter != nil
        unit.renter.name
      end
    end
    renters.compact
  end

  def average_rent
    sum = 0

    @units.each do |unit|
      sum += unit.monthly_rent
    end

    sum.to_f / @units.size
  end
end
