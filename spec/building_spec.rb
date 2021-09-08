require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Iteration 2' do

  xit 'can initialize building' do
    building = Building.new
    expect(building).to be_an_instance_of(Building)
  end

  xit 'can store units in an array' do
    building = Building.new
    expect(building.units).to eq([])
  end

  xit 'can add units to the building' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.units).to eq([unit1, unit2])
  end

  xit 'can store the renter of the unit' do
    building = Building.new

    expect(building.renters).to eq([])
  end

  it 'can give an array of names of renters' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")
    unit1.add_renter(renter1)
    building.add_unit(unit1)
    building.add_unit(unit2)
    #unit1.add_renter(renter1)

    expect(building.renters).to eq("Aurora")

    renter2 = Renter.new("Tim")
    unit1.add_renter(renter2)

    expect(building.renters).to eq(["Aurora", "Tim"])
  end

  it 'can give the average rent of the units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.average_rent).to eq(1099.5)
  end
end
