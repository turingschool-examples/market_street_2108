require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  before(:each) do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
  end

  it 'exists' do
    expect(@building).to be_an_instance_of Building
  end

  it 'can return units' do
    expect(@building.units).to eq([])
  end

  it 'can add units' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)

    expect(@building.units).to eq([@unit1, @unit2])
  end
end
