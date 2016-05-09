#!/usr/bin/env ruby
require_relative 'numeralConverter'

@nc = NumeralConverter.new
@opt = 1

while (@opt != '0')
  puts 'Please type the number you would like to convert: '
  @input = gets

  while (@nc.convert_number(@input) == 'error')
    puts "\n"
    puts 'Invalid input! Please insert an integer: '
    @input = gets
  end

  @input = @nc.convert_number(@input)
  puts "\n"
  @nc.number = @input
  @result = @nc.convert
  puts "#{@input} in words is: " + @result

  puts "\n"
  puts 'Do you want to exit? (0 to exit ; any key to restart): '
  @opt = gets.chomp
  puts "\n"

end

