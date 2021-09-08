require './lib/renter'
require './lib/apartment'
require './lib/building'

RSpec.describe Building do
  before(:each) do
    @building = Building.new
  end

  it 'exists' do
    expect(@building).to be_an_instance_of Building
  end
end
