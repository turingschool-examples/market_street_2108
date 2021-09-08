require './lib/renter'
require './lib/apartment'
require 'rspec'

describe 'Apartment' do
  describe '#initialize' do
    it 'unit1 is an instance of Apartment' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1).to be_a(Apartment)
    end
    
    it 'unit1 stores information in a newly generated hash' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.apartment_information).to be_a(Hash)
    end
    
    it 'unit1 has a number' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.number).to eq("A1")
    end
    
    it 'unit1 has a monthly rent' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.monthly_rent).to eq(1200)
    end
    
    it 'unit1 has a number of bathrooms' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.bathrooms).to eq(1)
    end
    
    it 'unit1 has a number of bedrooms' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.bedrooms).to eq(1)
    end
    
    it 'unit1 doesnt have a defined renter' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      expect(unit1.renter).to be nil
    end
  end

  describe '#add_renter' do
    it 'adds a renter' do
      renter1 = Renter.new("Jessie")
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

      unit1.add_renter(renter1)

      expect(unit1.renter).to eq(renter1)
    end
  end
end
