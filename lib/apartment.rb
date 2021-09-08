class Apartment
  attr_reader :unit, :renter

  def initialize(unit)
    @unit = unit
    @renter = nil
  end

  def number
    @unit[:number]
  end

  def monthly_rent
    @unit[:monthly_rent]
  end

  def bathrooms
    @unit[:bathrooms]
  end

  def bedrooms
    @unit[:bedrooms]
  end

  def renter
    @renter
  end

  def add_renter(renter)
    @renter = renter
  end

end
