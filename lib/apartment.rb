require './lib/renter'

class Apartment

  def initialize(attributes)
    @renter = Renter.new('Jessie')
    @number = attributes[:number]
    @monthly_rent = attributes[:monthly_rent]
    @bathrooms = attributes[:bathrooms]
    @bedrooms = attributes[:bedrooms]
  end

  def attributes
    @attributes
  end
end
