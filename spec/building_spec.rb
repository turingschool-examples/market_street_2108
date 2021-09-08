require './lib/renter'
require './lib/apartment'
require './lib/building'

describe Building do
  it '#exists' do
    building = Building.new

    expect(building).to be_an_instance_of Building
  end

  it '#add_unit' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.units).to eq [unit1, unit2]
  end

  it '#add_renter' do
    building = Building.new

    expect(building.renters).to eq []

    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")

    building.add_renter(renter1)
    building.add_renter(renter2)

    expect(building.renters).to eq [renter1, renter2]
  end

  it '#average_rent' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.average_rent).to eq 1099.5
  end

  it '#renter_with_highest_rent' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new("Spencer")

    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)

    expect(building.rented_units).to eq []

    unit2.add_renter(renter1)

    expect(building.rented_units).to eq [unit2]

    renter2 = Renter.new("Jessie")

    unit1.add_renter(renter2)

    results = building.renter_with_highest_rent

    expect(results).to eq "Jessie"

    renter3 = Renter.new("Max")

    unit3.add_renter(renter3)

    results = building.renter_with_highest_rent

    expect(result).to eq "Max"

    building.add_unit(unit4)



  end
end
