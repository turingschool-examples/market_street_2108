require './lib/renter'
require './lib/apartment'

RSpec.describe 'Iteration 2' do
  before :each do
    @unit1 = Apartment.new("A1", 1200, 1, 1)
  end

  it "is an instance of Apartment" do
    expect(@unit1).to be_an_instance_of(Apartment)
  end

  it 'has a number' do
    expect(@unit1.number).to eq("A1")
  end
end
