require 'pry'
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
         num_digits = number.to_s.chars.map do |num|
           num.to_i
         end.reduce(:+)
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
    # sum_greater_than_9.reduce(0) do |sum, num|
    #   sum + num
    # end
  end

  def validate
    if sumed_digits % 10 == 0
      return true
    else
      return false
    end

  end

end
