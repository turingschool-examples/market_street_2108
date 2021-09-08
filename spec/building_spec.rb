require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Iteration 2' do
  it 'exists' do
    building = Building.new
    expect(building).to be_an_instance_of(Building)
  end

  it 'starts with no units' do
    building = Building.new
    expect(building.units).to eq([])
  end

  it 'can add units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    expect(building.units).to eq([unit1, unit2])
  end

  it 'starts with no renters' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    expect(building.renters).to eq([])
  end

  it 'can add renters' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")
    building.add_unit(unit1)
    building.add_unit(unit2)
    unit1.add_renter(renter1)
    unit2.add_renter(renter2)
    expect(building.renters).to eq(["Aurora, Tim"])
  end

  it 'has an average rent' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    expect(building.average_rent).to be_a(Float)
  end
end

RSpec.describe 'Iteration 3' do

  it 'starts with no rented units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new("Spencer")
    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)
    expect(building.rented_units).to eq([])
  end

  it 'can rent units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new("Spencer")
    renter2 = Renter.new("Jessie")
    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)
    unit2.add_renter(renter1)
    expect(building.rented_units).to eq(unit2)
  end

  it 'has a highest rent' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new("Spencer")
    renter2 = Renter.new("Jessie")
    renter3 = Renter.new("Max")

    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)

    unit2.add_renter(renter1)
    expect(building.renter_with_highest_rent).to eq(renter1)

    unit1.add_renter(renter2)
    expect(building.renter_with_highest_rent).to eq(renter2)

    unit3.add_renter(renter3)
    expect(building.renter_with_highest_rent).to eq(renter3)
  end
end
