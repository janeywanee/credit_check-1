require 'pry'
class CreditCheck
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def convert_array
    @number.split(//)
  end

  def array_of_integers
    convert_array.map do |number|
      number.to_i
    end
  end

end
