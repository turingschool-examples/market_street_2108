require 'rspec'
require './lib/renter'
require './lib/apartment'
require './lib/building'

describe Building do

  before(:each) do
    @building = Building.new
  end

  describe '#initialize' do
    it "creates an instance object of Building class" do
      expect(@building).to be_an_instance_of(Building)
    end

    it 'has readable attributes' do
      expect(@building.units).to eq([])
    end
  end

  describe '#add_unit' do
    it 'adds unit to a units array' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
      @building.add_unit(unit1)
      @building.add_unit(unit2)

      expect(@building.units).to eq([unit1,unit2])
    end
  end

  describe '#renters' do
    it 'returns an array of renter in the Building instance object' do
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
      @building.add_unit(unit1)
      @building.add_unit(unit2)
      renter1 = Renter.new("Aurora")
      renter2 = Renter.new("Tim")
      unit1.add_renter(renter1)
      unit2.add_renter(renter2)

      expect(@building.renters).to eq(["Aurora", "Tim"])
    end
  end

end
