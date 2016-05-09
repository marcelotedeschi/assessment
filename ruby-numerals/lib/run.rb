#!/usr/bin/env ruby
require_relative 'numeralConverter'

@nc = NumeralConverter.new
@opt = 1

while (@opt != 0)
  puts 'Please type the number you would like to convert: '
  @input = gets.to_i

  puts "\n"
  @nc.number = @input
  @result = @nc.convert


  puts "#{@input} in words is: " + @result

  puts "\n"
  puts 'Do you want to exit? (0): '
  @opt = gets.to_i
  puts "\n"

end

