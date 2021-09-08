require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe do
  before :each do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
  end

  it "exists" do
    expect(@building).to be_a(Building)

  end
end
