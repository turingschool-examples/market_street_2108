require './lib/renter'
require './lib/apartment'

RSpec.describe 'Iteration 1' do

  it 'can initialize apartment' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1).to be_an_instance_of(Apartment)
  end

  it 'can check apartment number' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.number).to eq("A1")
  end

  it 'can check monthly rent price' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.monthly_rent).to eq(1200)
  end

  it 'can check number of bathrooms' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.bathrooms).to eq(1)
  end

  it 'can check number of bedrooms' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.bedrooms).to eq(1)
  end

  it 'can check who the renter is' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.renter).to eq(nil)
  end

  it 'can check if a renter is sucesfully added' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Billy")
    unit1.add_renter(renter1)
    expect(unit1.renter).to be_an_instance_of(Renter)
  end
end
