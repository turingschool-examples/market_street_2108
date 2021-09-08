require 'rspec'
require './lib/apartment'
require './lib/renter'

describe 'Apartment' do

it 'exists' do
  unit1 = Apartment.new({number: "A1", monthly_rent: 1200,
    bathrooms: 1, bedrooms: 1})

  expect(unit1).to be_an_instance_of Apartment
  end

it 'has a renter' do
  unit1 = Apartment.new({number: "A1", monthly_rent: 1200,
    bathrooms: 1, bedrooms: 1})
  renter1 = Renter.new('Jessie')

  expect(renter1).to be_an_instance_of Renter
  end

it 'has attributes' do
  unit1 = Apartment.new({number: "A1", monthly_rent: 1200,
    bathrooms: 1, bedrooms: 1})

  expect(@attributes).to include_a Hash
  end
end
