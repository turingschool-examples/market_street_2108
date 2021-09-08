require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Iteration 2' do
  before :each do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
    @renter1 = Renter.new("Spencer")
  end

  it 'Building Instantiation' do
    expect(@building).to be_an_instance_of(Building)
  end

  it "has an empty array for apartments" do
    expect(@building.units).to eq([])
  end

  it "can add apartments" do

    @building.add_unit(@unit1)
    @building.add_unit(@unit2)

    expect(@building.units).to eq([@unit1, @unit2])
  end

  it "has a place for renters" do
    expect(@building.renters).to eq([])
  end

  it "can add renters" do

    @building.add_renter(@renter1)
    @building.add_renter(@renter2)

    expect(@building.renters).to eq([@renter1, @renter2])
  end

  it "has an average_rent" do

    expect(@building.average_rent).to eq(1099.5)
  end

  it "has an array od rented units" do

    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @building.add_unit(@unit3)

    expect(@building.rented_units).to eq([])
  end

  it "can put a renter in a unit" do
    @unit2.add_renter(@renter1)

    expect(@building.rented_units).to eq([@unit1])
  end
end
