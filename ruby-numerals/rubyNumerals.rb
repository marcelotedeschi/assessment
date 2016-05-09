#!/usr/bin/env ruby
class NumeralConverter
  attr_accessor :number

  # Create object number
  def initialize(number = 123456789)
    @number = number
  end

  # Conversion Table (hash with keys)
  NUMERAL = {
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
  }
  TENS = {
      2 => 'twenty',
      3 => 'thirty',
      4 => 'forty',
      5 => 'fifty',
      6 => 'sixty',
      7 => 'seventy',
      8 => 'eighty',
      9 => 'ninety',
  }
  # millions, billions, trillion, quadrillions,
  ILLIONS = {
      1 => 'thousand',
      2 => 'million',
      3 => 'billion',
      4 => 'trillion',
      5 => 'quadrillion'
  }

  # main method for conversion
  def convert
    # variable result contains the final result to display
    @result = '#{@number} in words is: '
    numberTemp = @number # temporary variable to hold operations

    if numberTemp == 0
      @result += NUMERAL[numberTemp]
    end

    if numberTemp < 0
      @result += 'Negative'
      numberTemp *= -1
    end

    while (numberTemp != 0)

      @count = size(numberTemp)
      puts @count

      @number2 = numberTemp / (1000**@count)

      if(@number2 / 100 != 0)
        @tens = @number2 % 100
        @number2 /= 100
        @result = @result + ' ' + NUMERAL[@number2] + ' hundred'
        @number2 = @tens
      end
      if (@number2 / 10 != 0)
        if (@number2 /10 == 1)
          @result += ' ' + NUMERAL[@number2]
        else
          @numeral = @number2 % 10
          @number2 /= 10
          @result +=  ' ' + TENS[@number2]
          @number2 = @numeral
          @result += ' ' + NUMERAL[@number2]
        end
      else
        @result += ' ' + NUMERAL[@number2]
      end

      if (@count > 0)
        @result += ' ' + ILLIONS[@count]
      end

      numberTemp %= (1000**@count)

    end

    # display converted number on screen
    puts @result
  end
  # method to return trillion, billion, million...
  def size(numberTemp)
    @count = 0
    loop do
      numberTemp /= 1000
      break if(numberTemp == 0)
      @count += 1
    end
    return @count
  end

end

if __FILE__ == $0

  puts 'Please type the number you would like to convert: '
  @number = gets.to_i

  @nm = NumeralConverter.new(@number)
  @nm.convert


end