class Apartment
  attr_reader :number

  def initialize(unit_info)
    @number = unit_info[:number]
  end
end
