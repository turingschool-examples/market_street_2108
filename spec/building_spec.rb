require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  it 'exists' do
    building = Building.new

    expect(building).to be_a(Building)
  end

  it 'has no units to begin with' do
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

  it 'has no renters to begin with' do
    building = Building.new

    expect(building.renters).to eq([])
  end

  it 'can add renters' do
    building = Building.new
    renter1 = Renter.new("Aurora")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    expect(building.renters).to eq([])

    unit1.add_renter(renter1)

    expect(building.renters).to eq(["Aurora"])
  end
end

# renter2 = Renter.new("Tim")
# # => #<Renter:0x00007fa83b9b0358...>
#
# unit2.add_renter(renter2)
#
# building.renters
# # => ["Aurora", "Tim"]
#
# building.average_rent
# # => 1099.5
