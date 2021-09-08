class Renter
  attr_reader :name

  def initialize(name)
    @name = name
    @rented = false
  end
end
