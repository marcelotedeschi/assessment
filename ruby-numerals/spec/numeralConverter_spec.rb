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

  it 'converts 13 to thirteen' do
    @nc.number = 13
    expect(@nc.convert).to eq ('thirteen')
  end

  it 'converts 30 to thirty' do
    @nc.number = 30
    expect(@nc.convert).to eq ('thirty')
  end
end