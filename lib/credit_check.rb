# require 'pry'
class CreditCheck
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def convert_array
    number.reverse.split(//)
  end

  def array_of_integers
    convert_array.map do |number|
      number.to_i
    end
  end

  def double
    array_of_integers.map.with_index do |val, index|
      if index.odd?
        val * 2
      else
       val
     end
    end
  end

  def sum_greater_than_9
    double.map do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

  def sumed_digits
    sum = 0
    sum_greater_than_9.each do |num|
      sum += num
    end
    sum
  end

  def validate
    if sumed_digits % 10 == 0
      puts "The number is valid!"
      return true
    else
      puts "The card is invalid!"
      return false
    end
  end

end
