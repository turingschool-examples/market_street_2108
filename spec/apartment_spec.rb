require './lib/renter'
require './lib/apartment'

describe Apartment do
  it '#exists' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    expect(unit1).to be_an_instance_of Apartment
  end

  it '#number' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    expect(unit1.number).to eq "A1"
  end

  it '#monthly_rent' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    expect(unit1.monthly_rent).to eq 1200
  end

  it 'has rooms' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    expect(unit1.bathrooms).to eq 1
    expect(unit1.bedrooms).to eq 1
  end

  it '#renter' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    expect(unit1.renter).to eq nil
  end

  it '#add_renter' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Jessie")

    unit1.add_renter(renter1)

    expect(unit1.renter).to eq renter1

  end
  end
