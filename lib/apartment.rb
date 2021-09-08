class Apartment
  attr_reader :details

  def initialize(details)
    @details = details
    @renters = []
  end

  def number
    @details[:number]
  end

  def monthly_rent
    @details[:monthly_rent]
  end

  def bathrooms
    @details[:bathrooms]
  end

  def bedrooms
    @details[:bedrooms]
  end

  def add_renter(renter)
    @renters << renter
  end

  def renter
    @renters
  end
end
