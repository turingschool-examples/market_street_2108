require 'rspec'
require './lib/apartment'

describe 'Iteration 1' do
  before :each do
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  it 'has a number' do
    expect(@unit1.number).to eq('A1')
  end

  it 'has a monthly rent' do
    expect(@unit1.monthly_rent).to eq(1200)
  end

  it 'has a number of bathrooms' do
    expect(@unit1.bathrooms).to eq(1)
  end

  it 'has a number of bedrooms' do
    expect(@unit1.bedrooms).to eq(1)
  end

  it 'has no renters by default' do
    expect(@unit1.renter).to be nil
  end

  it 'can have a renter' do
    jessie = Renter.new("Jessie")

    @unit1.add_renter(jessie)

    expect(@unit1.renter).to eq(jessie)
  end
end
