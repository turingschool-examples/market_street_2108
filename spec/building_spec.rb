require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  before(:each) do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @renter1 = Renter.new("Aurora")
  end

  it 'exists' do
    expect(@building).to be_a(Building)
  end

  it 'has no units by default' do
    expect(@building.units).to eq([])
  end

  it 'can have units' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    expect(@building.units).to eq([@unit1, @unit2])
  end

  it 'has no renters by default' do
    expect(@building.renters).to eq([])
  end
end
