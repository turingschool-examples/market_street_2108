require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do

  it 'exists' do
    building = Building.new

    expect(building).to be_a(Building)
  end

  it 'has no units by default' do
    building = Building.new

    expect(building.units).to eq([])
  end

  it 'can have units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.units).to eq([unit1, unit2])
  end

  it 'has no renters by default' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.renters).to eq([])
  end

  it 'can have renters' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)
    renter1 = Renter.new("Aurora")
    unit1.add_renter(renter1)

    expect(building.renters).to eq(["Aurora"])
  end

  it 'can average rent' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)

    expect(building.average_rent).to eq(1099.5)
  end

  it 'has no rented apartments by default' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)
    building.add_unit(unit4)

    expect(building.rented_units).to eq([])
  end

  it 'can have rented units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new("Spencer")
    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)
    building.add_unit(unit4)
    unit2.add_renter(renter1)

    expect(building.rented_units).to eq([unit2])
  end

  it 'can figure out highest rent' do
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
    building.add_unit(unit4)
    unit2.add_renter(renter1)
    unit1.add_renter(renter2)
    expect(building.renter_with_highest_rent).to eq(renter2)
  end

  it 'can add highest renter' do
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
    building.add_unit(unit4)
    unit2.add_renter(renter1)
    unit1.add_renter(renter2)
    unit3.add_renter(renter3)
    expect(building.renter_with_highest_rent).to eq(renter2)
  end

  it 'can sort by number of bedrooms' do
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
    building.add_unit(unit4)
    unit2.add_renter(renter1)
    unit1.add_renter(renter2)
    unit3.add_renter(renter3)
    expected ={
      3 => ["D4" ],
      2 => ["B2", "C3"],
      1 => ["A1"]
    }
    expect(building.units_by_number_of_bedrooms).to eq(expected)
  end
end
