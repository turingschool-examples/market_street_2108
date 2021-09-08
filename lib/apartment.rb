class Apartment
  attr_reader :apartment_information

  def initialize(apartment_information)
    @apartment_information = apartment_information
  end

# There MUST be a better way to do this.
# I can't think of one or find one right now, though.

  def number
    apartment_information[:number]
  end

  def monthly_rent
    apartment_information[:monthly_rent]
  end

  def bathrooms
    apartment_information[:bathrooms]
  end

  def bedrooms
    apartment_information[:bedrooms]
  end

  def renter
    apartment_information[:renter]
  end

  def add_renter(renter)
    apartment_information[:renter] = renter
  end
end
