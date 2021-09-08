require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe do
  before :each do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    
  end

  it "exists" do
    expect(@building).to be_a(Building)
  end

  it "has no units by default" do
    expect(@building.units).to eq([])
  end

  it "can add units" do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)

    expect(@building.units).to eq([@unit1, @unit2])
  end

  it "has no renters by default" do
    expect(@building.renters).to eq([])
  end

  xit "can add renters" do ###come back to this
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")

    @unit1.add_renter(@renter1)
    @unit2.add_renter(@renter2)

    expect(@building.renters).to eq([@renter1, @renter2])
  end

  xit "can calculate average rent" do  #come back to this
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)


    expect(@building.average_rent).to eq(1099.5)

  end
end
