require './lib/renter'
require './lib/apartment'

RSpec.describe 'Iteration 1' do
  before :each do
    @jessie = Renter.new("Jessie")
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  it 'exists' do

    expect(@unit1).to be be_an_instance_of(Apartment)
  end
end
