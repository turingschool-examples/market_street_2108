require 'rspec'
require './lib/renter'
require './lib/apartment'

describe Apartment do

  before(:each) do
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  describe '#initialize' do
    it 'Creates an instance object of Apartment class' do
      expect(@unit1).to be_an_instance_of(Apartment)
    end

    it 'has readable attributes' do
      expect(@unit1.number).to eq("A1")
      expect(@unit1.monthly_rent).to eq(1200)
      expect(@unit1.bathrooms).to eq(1)
      expect(@unit1.bedrooms).to eq(1)
      expect(@unit1.renter).to be_nil
    end
  end

  describe '#add_renter' do
    it 'adds a renter to the Apartment instance object' do
      renter1 = Renter.new("Jessie")
      @unit1.add_renter(renter1)

      expect(@unit1.renter).to eq(renter1)
    end
  end

end
