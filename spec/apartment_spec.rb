require './lib/renter'
require './lib/apartment'

RSpec.describe 'apartment' do

  it 'has keys and values' do
    unit1 = Apartment.new({number: "A1",
                          monthly_rent: 1200,
                          bathrooms: 1,
                          bedrooms: 1})

    expect(unit1.number).to eq("A1")
    expect(unit1.monthly_rent).to eq(1200)
    expect(unit.bathrooms).to eq(1)
    expect(unit1.bedrooms).to eq(1)
  end


end
