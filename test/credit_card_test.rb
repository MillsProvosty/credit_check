require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'
require './lib/credit_card'

class CreditCardTest < Minitest::Test
  def test_credit_card_exists
    @card = CreditCard.new("5541808923795240", 10000)
    assert_instance_of CreditCard, @card
  end

  def setup
    @card = CreditCard.new("5541808923795240", 10000)
  end

  def test_card_has_attributes
    @card = CreditCard.new("5541808923795240", 10000)
    assert_equal "5541808923795240", @card.card_number
    assert_equal 10000, @card.limit
  end

  def test_card_number_is_valid
    assert_equal true, @card.is_valid?
    @card_1 = CreditCard.new("5541801923795240", 10000)
    assert_equal false, @card_1.is_valid?
  end

  def test_last_four
    assert_equal "5240", @card.last_four
  end
end
