require "rspec"
require "./lib/building"

describe Class do
  before(:each) do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
  end
  it 'exists' do
    expect(@building).to be_a(Building)
  end
  it 'has a units array' do
    expect(@building.units).to eq([])
  end
  it 'adds units' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    expect(@building.units).to eq([@unit1, @unit2])
  end
  it 'has renters array' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    expect(@building.renters).to eq([])
  end
  it 'has renters array' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @unit1.add_renter(@renter1)
    @building.add_renters
    expect(@building.renters).to eq(["Aurora"])
    @unit2.add_renter(@renter2)
    @building.add_renters
    expect(@building.renters).to eq(["Aurora", "Tim"])

  end

end
