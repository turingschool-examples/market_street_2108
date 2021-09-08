require './lib/renter'
require './lib/apartment'

RSpec.describe do
  before :each do
    @renter1 = Renter.new("Jessie")
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  it "exists" do
    expect(@unit1).to be_a(Apartment)
  end

  it "has a unit number" do
    expect(@unit1.number).to eq("A1")
  end

  it "has a monthly rent" do
    expect(@unit1.monthly_rent).to eq(1200)
  end

  it "has bathrooms" do
    expect(@unit1.bathrooms).to eq(1)
  end

  it "has bedrooms" do
    expect(@unit1.bedrooms).to eq(1)
  end

  it "it does not have a renter yet" do
    expect(@unit1.renter).to eq(nil)
  end

  it "can add a renter" do
    @unit1.add_renter(@renter1)

    expect(@unit1.renter).to eq(@renter1)
  end
end
