require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe do
  it 'exists' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    expect(building).to be_an_instance_of Building
  end

  it 'has units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    expect(building.units).to eq([])
  end

  it 'adds_units' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})

    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)

    expect(building.units).to eq([unit1, unit2, unit3])
  end

  it 'has renters' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    expect(building.renters).to eq([])
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
  end

  it 'can add renters' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new('Spencer')
    renter2 = Renter.new('Tim')

    building.add_renter(renter1)
    building.add_renter(renter2)

    expect(building.renters).to eq(['Spencer', 'Tim'])
  end

  xit 'has average rent' do
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new('Spencer')
    renter2 = Renter.new('Tim')

    expect(building.average_rent).to eq(1099.5)
  end
end


# pry(main)> building.rented_units
# # => []
#
# pry(main)> unit2.add_renter(renter1)
#
# pry(main)> building.rented_units
# # => [#<Apartment:0x00007fa83bc777d0...>]
#
# pry(main)> building.renter_with_highest_rent
# # => #<Renter:0x00007fa83bc37978...>
#
# pry(main)> renter2 = Renter.new("Jessie")
# # => #<Renter:0x00007fa83b9b0358...>
#
# pry(main)> unit1.add_renter(renter2)
#
# pry(main)> building.renter_with_highest_rent
# # => #<Renter:0x00007fa83b9b0358...>
#
# pry(main)> renter3 = Renter.new("Max")
# # => #<Renter:0x00007fa83b7t0456...>
#
# pry(main)> unit3.add_renter(renter3)
#
# pry(main)> building.renter_with_highest_rent
# # => #<Renter:0x00007fa83b9b0358...>
#
# pry(main)> building.add_unit(unit4)
#
# pry(main)> building.units_by_number_of_bedrooms
# # =>
# # {
# #   3 => ["D4" ],
# #   2 => ["B2", "C3"],
# #   1 => ["A1"]
# # }
