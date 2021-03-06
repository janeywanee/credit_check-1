require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def setup
    @cc = CreditCheck.new("4929735477250543")
  end

  def test_it_exists
    assert_instance_of CreditCheck, @cc
  end

  def test_it_has_a_number
    assert_equal "4929735477250543", @cc.number
  end

  def test_convert_to_array
    assert_equal  ["3", "4", "5", "0", "5", "2", "7", "7", "4", "5", "3", "7", "9", "2", "9", "4"], @cc.convert_array
  end

  def test_convert_array_into_integers
    assert_equal [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4], @cc.array_of_integers
  end

  def test_double_every_other_number
    assert_equal [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8], @cc.double
  end

  def test_it_sums_numbers_greater_than_9
    assert_equal [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8], @cc.sum_greater_than_9
  end

  def test_sum_all_of_the_digits
    assert_equal 80, @cc.sumed_digits
  end

  def test_it_validates
    assert @cc.validate
  end

  def test_amex_cards
    cc_1 = CreditCheck.new("342804633855673")
    cc_2 = CreditCheck.new("342801633855673")

    assert cc_1.validate
    refute cc_2.validate
  end

  def test_it_can_check_invalid_and_valid_numbers
    cc_1 = CreditCheck.new("5541808923795240")
    cc_2 = CreditCheck.new("5541801923795240")

    assert cc_1.validate
    refute cc_2.validate
  end

end
