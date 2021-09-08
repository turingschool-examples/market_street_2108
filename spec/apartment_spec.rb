require './lib/renter'
require './lib/apartment'


RSpec.describe 'Iteration 1' do
  before :each do
    @unit1 = Apartment.new
  end

  it "is an apartment" do
    expect(@unit1).to be_an_instance_of(Apartment)
  end


  it "contains the attributes of an apartment" do
  unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  expect(@unit1.number).to_eq('A1')
  expect(@unit1.monthly_rent).to_eq(1200)
  expect(@unit1.bathrooms).to_eq(1)
  expect(@unit1.bedrooms).to_eq(1)
  end

  it "creates a renter" do
  expect(apartment.add_renter).to_eq(1)
  end

end
