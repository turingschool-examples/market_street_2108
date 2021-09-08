require 'rspec'
require './lib/renter.rb'
require './lib/apartment.rb'

RSpec.describe do
  context 'Apartment Instantiation' do
    before :each do
      @apartment = Apartment.new("A1", 1200, 1, 1)
    end

    it 'exists' do
      expect(@apartment).to be_an Apartment
    end

    it '#number' do
      expect(@apartment.number).to eq "A1"
    end

    it '#monthly_rent' do
      expect(@apartment.monthly_rent).to eq 1200
    end

    it '#bathrooms' do
      expect(@apartment.bathrooms).to eq 1
    end

    it '#bedrooms' do
      expect(@apartment.bedrooms).to eq 1
    end
  end
end
