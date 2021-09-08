require './lib/renter'
require './lib/apartment'

RSpec.describe 'Aparment' do


  renter1 = Renter.new("Jessie")
  unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

  it 'can create an apartment unit with number, rent, bathrooms, and bedrooms' do
    expect(unit1.number).to eq("A1")
    expect(unit1.monthly_rent).to eq(1200)
    expect(unit1.bathrooms).to eq(1)
    expect(unit1.bedrooms).to eq(1)
  end

  it 'only adds renter after add_renter is called' do
    expect(unit1.renter).to be nil

    unit1.add_renter(renter1)

    expect(unit1.renter).to be_an_instance_of(Renter)
  end
end
