require 'spec_helper'
require 'number_cruncher'

describe Integer do
  it 'should return the factors of 6' do
    expect(6.factors).to eq [1,2,3,6]
  end

  it 'should say that 10 is not a prime' do
    expect(10.prime?).to eq false
  end

  it 'should return json' do
    visit '/6'
    expect(last_response.headers['Content-Type']).to eq 'application/json;charset=utf-8'
  end
end
