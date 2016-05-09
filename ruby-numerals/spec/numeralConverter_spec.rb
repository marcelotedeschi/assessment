require_relative 'spec_helper'
require_relative '../lib/numeralConverter'


describe NumeralConverter do

  before do
    @nc = NumeralConverter.new
  end

  it 'converts 1 to one' do
    @nc.number = 1
    expect(@nc.convert).to eq ('one')
  end

  it 'converts 0 to zero' do
    @nc.number = 0
    expect(@nc.convert).to eq ('zero')
  end



end