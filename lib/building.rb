class Apartment

  attr_reader   :unit

  def initialize(unit)
    @unit = {}
  end


  def add_renter(renter)
    @renters << renter
  end

end
