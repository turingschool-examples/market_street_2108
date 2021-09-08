require './lib/renter'
require './lib/apartment'

RSpec.describe 'Iteration 2' do
  before :each do
    @renter1 = Renter.new("Jessie")
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  it 'exists' do

    expect(@unit1).to be_an_instance_of(Apartment)
  end

  it 'has a renter do' do

    expect(@renter1.name).to eq("Jessie")
  end

  it 'has a unit number' do

    expect(@unit.number).to eq("A1")
  end
end
