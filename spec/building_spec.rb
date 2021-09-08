require "rspec"
require "./lib/building"

describe Class do
  before(:each) do
    @building = Building.new
  end
  it 'exists' do
    expect(@building).to be_a(Building)
  end
  it 'has a units array' do
    expect(@building.units).to eq([])
  end
end
