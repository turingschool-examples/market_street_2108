require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Iteration 2' do
  before :each do
    @renter1 = Renter.new("Jessie")
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @building = Building.new
  end

  it 'exists' do

    expect(@building).to be_an_instance_of(Building)
  end

  it 'has units' do

    expect(@building.units).to eq([])
  end
end
