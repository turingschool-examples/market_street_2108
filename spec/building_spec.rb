require 'rspec'
require './lib/renter'
require './lib/apartment'
require './lib/building'

describe Building do

  describe '#initialize' do
    it "creates an instance object of Building class" do
      building = Building.new
      expect(building).to be_an_instance_of(Building)
    end
  end

end
