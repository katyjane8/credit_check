require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check'

class CreditCheckTest < Minitest::Test

    def test_credit_check_exists
        credit_check = CreditCheck.new
        assert_instance_of CreditCheck, credit_check
    end

    def test_credit_check_can_validate_credit_card_number
        credit_check = CreditCheck.new
        cc_number = "5541808923795240"
        result = credit_check.valid?(cc_number)
        assert_equal true, result
    end

   def test_credit_check_knows_bad_numbers

end
end
