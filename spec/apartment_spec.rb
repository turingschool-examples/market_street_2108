require "rspec"
require "./lib/apartment"

describe Class do
  before(:each) do
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end
  it 'exists' do
    expect(unit1).to be_a(Apartment)
  end
end
