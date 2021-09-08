require './lib/renter'
require './lib/apartment'
require './lib/building'

describe 'Building' do
  before :each do
    @building = Building.new
  end
  describe '#initialize' do
    it '@building is an instance of Building' do


      expect(@building).to be_a(Building)
    end

    it 'creates an array of units with none stored' do


      expect(@building.units).to eq([])
    end
  end

  describe '#add_units' do
    it 'adds units' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

      @building.add_unit(unit1)
      @building.add_unit(unit2)

      expect(@building.units).to eq([unit1, unit2])
    end
  end

  describe '#renters' do
    it 'returns an empty array of renters on initialization' do


      expect(@building.renters).to eq([])
    end

    it 'returns Aurora as renter once she is added' do

      renter1 = Renter.new("Aurora")
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit1.add_renter(renter1)
      @building.add_unit(unit1)

      expect(@building.renters).to eq(["Aurora"])
    end

    it 'returns Aurora and Tim as renters once both are added' do

      renter1 = Renter.new("Aurora")
      renter2 = Renter.new("Tim")
      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit1.add_renter(renter1)
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
      unit2.add_renter(renter2)
      @building.add_unit(unit1)
      @building.add_unit(unit2)

      expect(@building.renters).to eq(["Aurora", "Tim"])
    end
  end
  describe "#average_rent" do
    it 'finds the average rent of all units in the @building' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
      @building.add_unit(unit1)
      @building.add_unit(unit2)

      expect(@building.average_rent).to eq(1099.5)
    end
  end
  describe '#rented_units' do
    it 'returns what units are rented' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
      unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
      @building.add_unit(unit1)
      @building.add_unit(unit2)
      @building.add_unit(unit3)

      expect(@building.rented_units).to eq([])
    end

    it 'returns what units are rented' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
      unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
      renter1 = Renter.new("Spencer")
      unit2.add_renter(renter1)
      @building.add_unit(unit1)
      @building.add_unit(unit2)
      @building.add_unit(unit3)

      expect(@building.rented_units).to eq([unit2])
    end
  end
  describe '#renter_with_highest_rent' do
    it 'returns renter2 as renter with highest rent' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
      unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
      renter1 = Renter.new("Spencer")
      renter2 = Renter.new("Jessie")
      unit1.add_renter(renter2)
      unit2.add_renter(renter1)
      @building.add_unit(unit1)
      @building.add_unit(unit2)
      @building.add_unit(unit3)

      expect(@building.renter_with_highest_rent).to eq(renter2)
    end

    it 'returns renter2 as renter with highest rent after renter3 is added' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
      unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
      renter1 = Renter.new("Spencer")
      renter2 = Renter.new("Jessie")
      renter3 = Renter.new("Max")
      unit1.add_renter(renter2)
      unit2.add_renter(renter1)
      unit3.add_renter(renter3)
      @building.add_unit(unit1)
      @building.add_unit(unit2)
      @building.add_unit(unit3)

      expect(@building.renter_with_highest_rent).to eq(renter2)
    end
  end
  describe '#units_by_number_of_bedrooms' do
    it 'sorts units into a hash by number of bedrooms' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
      unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
      unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
      @building.add_unit(unit1)
      @building.add_unit(unit2)
      @building.add_unit(unit3)
      @building.add_unit(unit4)

      expect(@building.units_by_number_of_bedrooms).to eq({
        3 => ["D4" ],
        2 => ["B2", "C3"],
        1 => ["A1"]
        })
    end
  end

  describe '#annual_breakdown' do
    it 'prints the annual breakdown of each individual renter' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Spencer")
    @building.add_unit(unit1)
    @building.add_unit(unit2)
    @building.add_unit(unit3)
    unit2.add_renter(renter1)

    expect(@building.annual_breakdown).to eq({"Spencer" => 11988})
    end

    it 'prints the annual breakdown of each individual renter' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Spencer")
    renter2 = Renter.new("Jessie")
    @building.add_unit(unit1)
    @building.add_unit(unit2)
    unit2.add_renter(renter1)
    unit1.add_renter(renter2)

    expect(@building.annual_breakdown).to eq({"Jessie" => 14400, "Spencer" => 11988})
    end
  end

  describe '#rooms_by_renter' do
    it 'prints all rooms by renter' do

      unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
      unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
      renter1 = Renter.new("Spencer")
      renter2 = Renter.new("Jessie")
      @building.add_unit(unit1)
      @building.add_unit(unit2)
      unit2.add_renter(renter1)
      unit1.add_renter(renter2)


      expect(@building.rooms_by_renter).to eq({
        renter2 => {bathrooms: 1, bedrooms: 1},
        renter1 => {bathrooms: 2, bedrooms: 2}
        })
      end
  end
end
