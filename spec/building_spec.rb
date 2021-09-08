require 'RSpec'
require './lib/renter'
require './lib/apartment'
require './lib/building'

describe 'Building' do
  before(:each) do
    @building = Building.new
  end

  it 'initialize' do

    expect(@building).to be_an_instance_of(Building)
  end

  it 'has units' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    @building.add_unit(unit1)
    @building.add_unit(unit2)

    expect(@building.units).to include(unit1, unit2)
  end

  it 'has renters' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")

    unit1.add_renter(renter1)
    unit2.add_renter(renter2)

    @building << renter1 = Renter.new("Aurora")
    @building << renter2 = Renter.new("Tim")

    expect(@building.renters).to include("Aurora", "Tim")
  end

  it 'has average rent' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    @building.add_unit(unit1)
    @building.add_unit(unit2)

    expect(@building.average_rent).to eq(1099.5)
  end

  it 'adds rented units' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})

    renter1 = Renter.new("Spencer")

    @building.add_unit(unit1)
    @building.add_unit(unit2)
    @building.add_unit(unit3)
    @building.add_unit(unit4)

    unit2.add_renter(renter1)

    @building << renter1 = Renter.new("Spencer")

    expect(@building.rented_units).to include(unit2)
  end




end
