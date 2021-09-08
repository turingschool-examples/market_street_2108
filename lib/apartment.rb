class Apartment

  def initialize(unit)
    @number = unit[:number]
    @monthly_rent = unit[:monthly_rent]
    @bathrooms = unit[:bathrooms]
    @bedrooms = unit[:bedrooms]
  end

  def number
    @number
  end

  def monthly_rent
    @monthly_rent
  end

  def bathrooms
    @bathrooms
  end

  def bedrooms
    @bedrooms
  end

  def renter
  end

  def add_renter(renter1)
    renter << (renter1)
  end
end
