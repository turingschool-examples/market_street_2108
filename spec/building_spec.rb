require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  before(:each) do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
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

  it 'can return renters' do
    expect(@building.renters).to eq([])
  end

  it 'can add renters' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @unit1.add_renter(@renter1)
      
    expect(@building.renters).to eq(["Aurora"])
  end
end
