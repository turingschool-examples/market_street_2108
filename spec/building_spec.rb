require 'rspec'
require './lib/renter.rb'
require './lib/apartment.rb'
require './lib/building.rb'

RSpec.describe do
  context 'building instantiation' do
    before :each do
      @building = Building.new
    end

    it 'exisits' do
      expect(@building).to be_a Building
    end

    it 'starts without any units' do
      expect(@building.units).to eq []
    end
  end

  context 'apartment interaction' do
    before :each do
      @building = Building.new
      @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
      @renter1 = Renter.new("Aurora")
      @renter2 = Renter.new("Tim")
      @building.add_unit(@unit1)
      @building.add_unit(@unit2)
    end

    it 'can add units' do
      expect(@building.units).to eq [@unit1, @unit2]
    end

    it 'starts without renters' do
      expect(@building.renters).to eq []
    end

    it 'can access renters of each unit' do
      @unit1.add_renter(@renter1)
      expect(@building.renters).to eq ["Aurora"]

      @unit2.add_renter(@renter2)

      expect(@building.renters).to eq ["Aurora", "Tim"]
    end

    it 'can calculate average rent' do
      expect(@building.average_rent).to eq 1099.5
    end
  end
end
