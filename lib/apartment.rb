class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :renter

  def initialize(details, renter = nil)
    @details = {number: number, monthly_rent: monthly_rent,
        bathrooms: bathrooms, bedrooms: bedrooms}
    @number = details.fetch(:number)
    @monthly_rent = details.fetch(:monthly_rent)
    @bathrooms = details.fetch(:bathrooms)
    @bedrooms = details.fetch(:bedrooms)
    @renter = renter
  end

  def add_renter
  end
end
