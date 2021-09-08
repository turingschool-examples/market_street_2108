require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe 'Iteration 1' do
  before :each do
    @unit = Apartment.new
    building = Building.new

  it "is an instance of building" do
    expect(building.new).to be_an_instance_of(Building)
  end


  end
end 
