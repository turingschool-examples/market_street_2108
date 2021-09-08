require "rspec"
require "./lib/building"

describe Class do
  before(:each) do
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @renter1 = Renter.new("Aurora")
    @renter2 = Renter.new("Tim")
  end
  it 'exists' do
    expect(@building).to be_a(Building)
  end
  it 'has a units array' do
    expect(@building.units).to eq([])
  end
  it 'adds units' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    expect(@building.units).to eq([@unit1, @unit2])
  end
  it 'has renters array' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    expect(@building.renters).to eq([])
  end
  it 'has renters array with renter in it' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @unit1.add_renter(@renter1)
    @building.add_renters
    expect(@building.renters).to eq(["Aurora"])
  end
  it 'can add two names' do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @unit1.add_renter(@renter1)
    @unit2.add_renter(@renter2)
    @building.add_renters
    expect(@building.renters).to eq(["Aurora", "Tim"])
  end
  it "can calculate average rent" do
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    expect(@building.average_rent).to eq(1099.5)
  end
  end
  describe "Iteration 3" do
    before(:each) do
      @building = Building.new
      @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
      @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
      @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
      @renter1 = Renter.new("Spencer")
      @building.add_unit(@unit1)
      @building.add_unit(@unit2)
      @building.add_unit(@unit3)
    end
    it "has rented units array" do
      expect(@building.rented_units).to eq([])
    end
    it "has rented units after added renter" do
      @unit2.add_renter(@renter1)
      expect(@building.rented_units).to eq([@unit2])
    end
    it "has renter with highest rent" do
      @unit2.add_renter(@renter1)
      expect(@building.renter_with_highest_rent).to eq(renter1)
      renter2 = Renter.new("Jessie")
      unit1.add_renter(renter2)
      expect(@building.renter_with_highest_rent).to eq(renter2)
    end

  end
