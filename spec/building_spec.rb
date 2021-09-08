require './lib/renter'
require './lib/apartment'
require './lib/building'


RSpec.describe 'building' do

  it 'has a building' do
    building = Building.new

    expect(building).to be_an_instance_of(Building)
  end

  it 'has units' do
    building = Building.new
    building.units
    expect(building.units).to eq([])
  end

  it 'can add units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1",
      monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2",
      monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_units(unit1)
    building.add_units(unit2)

    expect(bulding.units).to eq([unit1, unit2])
  end

  it 'can add renters' do
    building = Building.new
    renter1 = Renter.new("Spencer")
    bulding.add_renter("Spencer")
    expect(building.renters).to eq["Spencer"]
  end

end
