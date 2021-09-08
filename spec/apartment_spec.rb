require './lib/renter'
require './lib/apartment'

RSpec.describe Apartment do

  it 'exists' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})      expect(unit1).to be_an_instance_of(Apartment)
  end

  xit 'has accessible attributes' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.number).to eq "A1"
    expect(unit1.monthly_rent).to eq 1200
    expect(unit1.bathrooms).to eq 1
    expect(unit1.bedrooms).to eq 1
  end

  xit 'has no renter by default' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    expect(unit1.renter).to eq nil
  end

  xit 'can add a renter' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit1.add_renter(renter1)
    expect(unit1.renter).to eq renter1
  end
