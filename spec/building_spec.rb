require 'rspec'
require './lib/renter'
require './lib/apartment'
require './lib/building'

describe 'Iteration 2' do
  before :each do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
  end

  it 'has an empty array of units' do
    expect(@building.units).to eq([])
  end

  it 'can add units' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)

    expect(@building.units).to include(@unit1, @unit2)
  end

  it 'has an empty array of renters' do
    expect(@building.renters).to eq([])
  end

  it 'can have renters in units' do
    renter1 = Renter.new("Aurora")
    @unit1.add_renter(renter1)
    @building.add_renter(@unit1.renter.name)

    expect(@building.renters).to eq(['Aurora'])
  end

  it 'can have renters in units' do
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")
    @unit1.add_renter(renter1)
    @unit2.add_renter(renter2)
    @building.add_renter(@unit1.renter.name)
    @building.add_renter(@unit2.renter.name)

    expect(@building.renters).to eq(['Aurora', 'Tim'])
  end

  it 'has an average rent' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)

    expect(@building.average_rent).to eq(1099.5)
  end
end

describe 'Iteration 3' do
  before :each do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
  end

  it 'doesnt have rented units by default' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @building.add_unit(@unit3)

    expect(@building.rented_units).to eq([])
  end

  it 'can have rented units' do
    renter1 = Renter.new("Spencer")
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @building.add_unit(@unit3)
    @unit2.add_renter(renter1)
    @building.add_rented_units(@unit2)

    expect(@building.rented_units).to eq([@unit2])
  end

  it 'has a renter with the highest rent' do
    renter1 = Renter.new("Spencer")
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @building.add_unit(@unit3)
    @unit2.add_renter(renter1)
    @building.add_rented_units(@unit2)

    expect(@building.renter_with_highest_rent).to eq(renter1)
  end

  it 'has a renter with the highest rent' do
    renter1 = Renter.new("Spencer")
    renter2 = Renter.new("Jessie")
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @building.add_unit(@unit3)
    @unit2.add_renter(renter1)
    @unit1.add_renter(renter2)
    @building.add_rented_units(@unit2)
    @building.add_rented_units(@unit1)

    expect(@building.renter_with_highest_rent).to eq(renter2)
  end
end
