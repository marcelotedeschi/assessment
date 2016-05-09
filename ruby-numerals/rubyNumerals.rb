#!/usr/bin/env ruby
class NumeralConverter
  attr_accessor :number

  # Create object number
  def initialize(number = 2016)
    @number = number
  end

  # Conversion Table (hash with keys)
  CONV = {
      2016 => 'twenty sixteen'
  }

  def sayNum
    puts CONV[@number]
  end

end

if __FILE__ == $0

  mg = NumeralConverter.new
  mg.sayNum


end