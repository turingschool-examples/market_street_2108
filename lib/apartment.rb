class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms

  def initialize(unit_info)
    @number = unit_info[:number]
    @monthly_rent = unit_info[:monthly_rent]
    @bathrooms = unit_info[:bathrooms]
  end
end
