require './lib/renter'
require './lib/apartment'

RSpec.describe 'Iteration 1' do

  it 'renter exists' do
    renter1 = Renter.new("Jessie")

    expect(renter1).to be_an_instance_of(Renter)
  end

  it 'can identify renter1 name' do
    renter1 = Renter.new("Jessie")

    expect(renter1.name).to eq("Jessie")
  end

  it 'apartment exists' do
     unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
     renter1 = Renter.new("Jessie")

     expect(unit1).to be_an_instance_of(Apartment)
  end

  xit 'can add a renter to unit' do
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Jessie")

    expect(unit1.renter).to be(nil)
  end
end
