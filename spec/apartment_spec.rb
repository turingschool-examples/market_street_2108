require './lib/renter'
require './lib/apartment'

RSpec.describe Apartment do
  before(:each) do
    @renter1 = Renter.new("Jessie")
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  it "exists" do
    expect(@unit1).to be_an_instance_of(Apartment)
  end

  it "has a unit number" do
    expect(@unit1.number).to eq("A1")
  end

  it "returns monthly_rent" do
    expect(@unit1.monthly_rent).to eq(1200)
  end

  it "returns the amount of bathrooms" do
    expect(@unit1.bathrooms).to eq(1)
  end

  it "returns the amount of bedrooms" do
    expect(@unit1.bedrooms).to eq(1)
  end

  it "has nil renters by default" do
    expect(@unit1.renter).to eq(nil)
  end

  it "can add renters" do
    @unit1.add_renter(@renter1)

    expect(@unit1.renter).to eq(@renter1)
  end
end
