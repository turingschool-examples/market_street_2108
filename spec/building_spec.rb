require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  before(:each) do
    building = Building.new
  end
  
