require "rspec"
require "./lib/apartment"

describe Class do
  before(:each) do
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end
  it 'exists' do
    expect(@unit1).to be_a(Apartment)
  end
  it 'has a number' do
    expect(@unit1.number).to eq("A1")
  end
  it 'has monthly_rent' do
    expect(@unit1.monthly_rent).to eq(1200)
  end
  it 'has bathrooms' do
    expect(@unit1.bathrooms).to eq(1)
  end

end
