require 'pry'
class CreditCheck
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def convert_array
    @number.reverse.split(//)
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

end
