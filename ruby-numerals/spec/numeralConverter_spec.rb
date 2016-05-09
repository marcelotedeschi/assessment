require_relative 'spec_helper'
require_relative '../lib/numeralConverter'


describe NumeralConverter do

  before do
    @nc = NumeralConverter.new
  end


  # validation for main method Convert

  it 'converts 1 to one' do
    @nc.number = 1
    expect(@nc.convert).to eq ('one')
  end

  it 'converts 0 to zero' do
    @nc.number = 0
    expect(@nc.convert).to eq ('zero')
  end

  it 'converts -2 to negative 2' do
    @nc.number = -2
    expect(@nc.convert).to eq ('negative two')
  end

  it 'converts 13 to thirteen' do
    @nc.number = 13
    expect(@nc.convert).to eq ('thirteen')
  end

  it 'converts 30 to thirty' do
    @nc.number = 30
    expect(@nc.convert).to eq ('thirty')
  end

  it 'converts 34 to thirty four' do
    @nc.number = 34
    expect(@nc.convert).to eq ('thirty four')
  end

  it 'converts 100 to one hundred' do
    @nc.number = 100
    expect(@nc.convert).to eq ('one hundred')
  end

  it 'converts 121 to one hundred' do
    @nc.number = 121
    expect(@nc.convert).to eq ('one hundred twenty one')
  end

  it 'converts 1210 to one thousand two hundred ten' do
    @nc.number = 1210
    expect(@nc.convert).to eq ('one thousand two hundred ten')
  end

  # validation for method size

  it 'returns 2 for numbers with 7 to 9 digits' do
    expect(@nc.size(123456789)).to eq (2)
  end

  # validation for method convert_number
  it 'returns error with the input is not integer' do
    expect(@nc.convert_number('f')).to eq ('error')
    expect(@nc.convert_number('1')).to eq (1)
  end
end