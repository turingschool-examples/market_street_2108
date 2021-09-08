require './lib/renter'

class Apartment

  def initialize(listing)
    @listing = listing
  end

  def number
    @listing[:number]
  end

  def monthly_rent
    @listing[:monthly_rent]
  end

  def bedrooms
    @listing[:bedrooms]
  end

  def bathrooms
    @listing[:bathrooms]
  end

  def renter
    @renter = @listing[:renter]
  end

  def add_renter(occupant)
    @listing[:renter] = occupant
  end
end
