require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Iteration 2' do
  before :each do
    @building = Building.new
  end

  it "is an instance of Building" do
    expect(@building).to be_an_instance_of(Building)
  end

  it "has empty units" do
    expect(@building.units).to eq([])
  end

  it "can add units" do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    add_units(unit1)
    add_units(unit2)

    expect(building.units).to eq([unit1, unit2])
  end
end
