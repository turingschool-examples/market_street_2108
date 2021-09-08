require 'rspec'
require './lib/renter.rb'
require './lib/apartment.rb'

RSpec.describe do
  context 'Apartment Instantiation' do
    before :each do
      @unit1 = Apartment.new("A1", 1200, 1, 1)
    end

    it 'exists' do
      expect(@unit1).to be_an Apartment
    end

    it '#number' do
      expect(@unit1.number).to eq "A1"
    end

    it '#monthly_rent' do
      expect(@unit1.monthly_rent).to eq 1200
    end

    it '#bathrooms' do
      expect(@unit1.bathrooms).to eq 1
    end

    it '#bedrooms' do
      expect(@unit1.bedrooms).to eq 1
    end
  end

  context 'Renter Interaction' do
    before :each do
      @unit1 = Apartment.new("A1", 1200, 1, 1)
      @renter1 = Renter.new("Jessie")
    end

    it 'starts empty' do
      expect(@unit1.renter).to be_nil
    end

    it 'can add a renter' do
      @unit1.add_renter(@renter1)

      expect(@unit1.renter).to eq @renter1
    end
  end
end
