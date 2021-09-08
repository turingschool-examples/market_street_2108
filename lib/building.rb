class Building
  attr_reader :units
  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units.push(unit)
    @units
  end

  def renters
    require 'pry' ; binding.pry
     if @units == []
      @renters
     else
       (@units.length).times do |i|
         @renters.push(@units[i].renter)
      end
     @renters
    end
  end
end
