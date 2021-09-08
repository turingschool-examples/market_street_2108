require './lib/renter'
require './lib/apartment'

RSpec.describe Apartment do
  before(:each) do
    @unit1   = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @renter1 = Renter.new("Jessie")
  end

  it 'exists' do
    expect(@unit1).to be_an_instance_of Apartment
  end

  it 'can return a renters name' do
    expect(@renter1.name).to eq("Jessie")
  end

  it 'can return unit number' do
    expect(@unit1.number).to eq("A1")
  end

  it 'can return monthly rent' do
    expect(@unit1.monthly_rent).to eq(1200)
  end

  it 'can return the number of bathrooms' do
    expect(@unit1.bathrooms).to eq(1)
  end
end
