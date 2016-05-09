#!/usr/bin/env ruby
class NumeralConverter
  attr_accessor :number

  # Create object number
  def initialize(number = 2016)
    @number = number
  end

  # Conversion Table (hash with keys)
  CONV = {
      0 => 'zero',
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine',
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen',
      20 => 'twenty',
      30 => 'thirty',
      40 => 'forty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety',
      100 => 'hundred',
      1000 => 'thousand',
      1000000 => 'million',
      1000000000 => 'billion'
  }

  # main method for conversion
  def convert
    # variable result contains the final result to display
    @result = "#{@number} in words is: "

    if @number <= 20
      displayNum
      puts @result
    end

  end

  # display numeral until 20
  def displayNum
    @result += CONV[@number]
  end


end

if __FILE__ == $0

  mg = NumeralConverter.new(11)
  mg.convert



end