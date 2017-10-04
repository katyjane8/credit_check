require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_credit_check_can_validate_credit_card_number
    checks = CreditCheck.new
    cc_number = "5541808923795240"

    assert_equal true, checks.valid?
  end

 # def test_credit_check_knows_bad_numbers
 #   credit_check = CreditCheck.new
 #   card_number = "4024007106512380"
 #   credit_check(card_number)
 #
 #   assert_equal false, credit_check.valid
 # end
end
