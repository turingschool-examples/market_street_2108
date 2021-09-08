require './lib/renter'
require './lib/apartment'

RSpec.describe Apartment do
  it 'has a name' do
    renter1 = Renter.new("Jessie")

    expect(renter1.name).to eq("Jessie")
  end

  context 'has attributes' do
    it 'has a number' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.number).to eq("A1")
    end

    it 'has monthly_rent' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.monthly_rent).to eq(1200)
    end

    it 'has bathrooms' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.bathrooms).to eq(1)
    end

    it 'has bedrooms' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.bedrooms).to eq(1)
    end
  end

  it 'starts with no renter' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    expect(unit1.renter).to eq(nil)
  end

  it 'starts with no renter' do
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    unit1.add_renter(renter1)
    expect(unit1.renter).to eq(renter1)
  end
end
