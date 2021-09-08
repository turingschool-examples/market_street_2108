require 'RSpec'
require './lib/renter'
require './lib/apartment'

describe Apartment do
  before(:each) do
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  it 'initialize' do

    expect(@unit1).to be_an_instance_of(Apartment)
    expect(@unit1.number).to eq("A1")
    expect(@unit1.monthly_rent).to eq(1200)
    expect(@unit1.bathrooms).to eq(1)
    expect(@unit1.bedrooms).to eq(1)
  end

  it 'has a renter' do
    renter1 = Renter.new("Jessie")

    @unit1.add_renter(renter1)

    expect(@unit1.renter).to include(renter1)
  end
end
