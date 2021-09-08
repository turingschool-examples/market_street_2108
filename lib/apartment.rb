class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathroooms,
              :bedrooms
  def initialize(unit_data)
    @number = unit_data[:number]
    @monthly_rent = unit_data[:monthly_rent]
    @bathrooms = unit_data[:bathrooms]
    @bedrooms = unit_data[:bedrooms]
  end

  def renter
  end

  def add_renter(renter1)
  end
end
