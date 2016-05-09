class NumeralConverter
  attr_accessor :number

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
      5 => 'quadrillion',
      6 => 'quintillion',
      7 => 'sextillion',
      8 => 'septillion',
      9 => 'octillion',
  }

  # Main method for conversion
  def convert
    # variable result contains the final result to display
    @result = String.new
    @numberTemp = number # temporary variable to hold operations

    # zero validation
    if @numberTemp == 0
      @result += NUMERAL[@numberTemp]
    end

    # negative validation
    if @numberTemp < 0
      @result += 'Negative'
      @numberTemp *= -1
    end

    # main loop: each iteration gets the first 3 integers until there are none left
    while (@numberTemp != 0)

      # count receives the size of the number
      @count = size(@numberTemp)

      # @numTemp receives the first 3 digits (or 2 or 1 digits)
      @numTemp = @numberTemp / (1000**@count)

      # if we have 3 digits get the first's name and grab the remaining 2
      if(@numTemp / 100 != 0)
        @tens = @numTemp % 100
        @numTemp /= 100
        @result = @result + NUMERAL[@numTemp] + ' hundred '
        @numTemp = @tens
      end
      # if we have 2 digits, get the name in NUMERAL or TENS and grab the remaining digit
      if (@numTemp / 10 != 0)
        # if we have 2 digit number inside NUMERAL table, get the name
        if (@numTemp /10 == 1)
          @result += NUMERAL[@numTemp] + ' '
        # else get the first digit name in table TENS then get last digit in table NUMERAL
        else
          @numeral = @numTemp % 10
          @numTemp /= 10
          @result += TENS[@numTemp] + ' '
          @numTemp = @numeral
          if (@numTemp != 0)
            @result += NUMERAL[@numTemp] + ' '
          end
        end
      # if the number is 1 digit and not zero
      elsif (@numTemp != 0)
        @result += NUMERAL[@numTemp] + ' '
      end

      # when number is equal or greater than 1000 add name in ILLIONS table
      if (@count > 0)
        @result += ILLIONS[@count] + ' '
      end

      # get the remaining digits after the first 3
      @numberTemp %= (1000**@count)
    end

    #remove blank space
    #@result[0] = ''
    # display converted number on screen
    return @result.chomp(' ')
  end

  # method to return thousand, million, billion...
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