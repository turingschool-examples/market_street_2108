require 'renter'

class Apartment

def initialize(apartment_hash)
  @apartment_hash = apartment_hash
end

def number
  @apartment_hash[:number]
end

def monthly_rent
  @apartment_hash[:monthly_rent]
end

def bathrooms
  @apartment_hash[:bathrooms]
end

def bedrooms
  @apartment_hash[:bedrooms]
end

def renter
  @apartment_hash[:renter]
end

def add_renter(renter)
  @apartment_hash[:renter] = renter
end


end
