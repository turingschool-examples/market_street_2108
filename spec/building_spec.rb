require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Iteration 2' do
  before :each do
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
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

  it 'can add units' do

    @building.add_unit(@unit1)
    @building.add_unit(@unit2)

    expect(@building.units).to eq([@unit1, @unit2])
  end

  it 'can have renters' do

    expect(@building.renters).to eq([])
  end

  it 'can add renters' do
    @unit1.add_renter(@renter1)

    expect(@renters).to eq([@renter1])

    @unit2.add_renter(@renter2)

    expect(@renters).to eq([@renter1, @renter2])
  end

  xit 'hs an average rent' do

    expect(@building.average_rent).to eq(1099.5)
  end
end
