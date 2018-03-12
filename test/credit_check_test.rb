require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, cc
  end

  def test_it_has_a_number
    cc = CreditCheck.new("4929735477250543")

    assert_equal "4929735477250543", cc.number
  end

  def test_convert_to_array
    cc = CreditCheck.new("4929735477250543")

    assert_equal ["4", "9", "2", "9", "7", "3", "5", "4", "7", "7", "2", "5", "0", "5", "4", "3"], cc.convert_array
  end

  def test_convert_array_into_integers
    cc = CreditCheck.new("4929735477250543")

    assert_equal [4,9,2,9,7,3,5,4,7,7,2,5,0,5,4,3], cc.array_of_integers
  end

end
