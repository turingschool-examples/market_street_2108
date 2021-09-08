require './lib/renter'
require './lib/apartment'

RSpec.describe do

  it 'exists' do
    renter1 = Renter.new('Jessie')
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1).to be_an_instance_of Apartment
    expect(renter1.name).to eq('Jessie')
  end

  it 'has a number' do
    renter1 = Renter.new('Jessie')
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.number).to eq('A1')
  end

  it 'has a monthly_rent' do
    renter1 = Renter.new('Jessie')
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.monthly_rent).to eq(1200)
  end

  it 'has bathrooms' do
    renter1 = Renter.new('Jessie')
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.bathrooms).to eq(1)
  end

  it 'has bedrooms' do
    renter1 = Renter.new('Jessie')
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.bedrooms).to eq(1)
  end

  it 'has renter' do
    renter1 = Renter.new('Jessie')
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.renter).to eq NIL
  end

  xit 'can add renters' do
    renter1 = Renter.new('Jessie')
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.renter).to eq(renter1)
  end
end
