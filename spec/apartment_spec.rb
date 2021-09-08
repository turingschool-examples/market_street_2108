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
  end

end
