require './lib/renter'
require './lib/apartment'

RSpec.describe 'Iteration 1' do
  it 'has an apartment number' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.number).to eq("A1")
  end

  it 'has a monthly rent' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.monthly_rent).to eq(1200)
  end

  it 'has a number of bathrooms' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.bathrooms).to eq(1)
  end

  it 'has a number of bedrooms' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.bedrooms).to eq(1)
  end

  it 'starts with no renter' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.renter).to eq([])
  end

  it 'can add a renter' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit1.add_renter(renter1)
    expect(unit1.renter.first).to eq(renter1)
    end
end
