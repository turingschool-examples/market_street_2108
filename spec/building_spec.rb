require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Building' do

  building = Building.new
  unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})


  it 'has empty array as default units' do
    expect(building.units).to eq([])
  end

  it 'can add unit' do
    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.units).to be_a(Array)
  end

  it 'stars with an empty array of renters' do
    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.renters).to eq([])
  end

  xit 'can provide an array of total renters in the building' do
    building.add_unit(unit1)
    building.add_unit(unit2)

    renter1 = Renter.new("Aurora")
    unit1.add_renter(renter1)
    building.cal_renters

    expect(building.renters).to eq("Aurora")
  end

  xit 'can show which units are rented' do
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})

    renter1 = Renter.new("Spencer")

    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)

    unit2.add_renter(renter1)

    expect(building.rented_units).to eq([])


  end
end
