require 'spec_helper'
require 'number_cruncher'

describe Integer do
  it 'should return the factors of 6' do
    expect(6.factors).to eq [1,2,3,6]
  end

  it 'should say that 2 is a prime' do
    expect(2.prime?).to eq true
  end

  it 'should say that 10 is not a prime' do
    expect(10.prime?).to eq false
  end

  it "should return json" do
    visit "/6"
    expect(last_response.headers["Content-Type"]).to eq "application/json;charset=utf-8"
  end

  it "should return the correct info about 6 as json" do
    visit '/6'
    six_info = { number: 6, factors: 6.factors, odd: 6.odd?, even: 6.even?, prime: 6.prime? }
    expect(six_info.to_json).to eq last_response.body
  end

end
