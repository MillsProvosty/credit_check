require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'
require './lib/credit_card'

p "Enter your credit card number here:"
new_card = CreditCard.new($stdin.gets.chomp, 10000)

if new_card.is_valid? == true
  p "Your card number is valid!"
elsif new_card.is_valid? == false
  p "Your card number is invalid."
end
