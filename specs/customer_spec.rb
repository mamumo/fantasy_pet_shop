require 'minitest/autorun'
require_relative'../customer.rb'

class TestCustomer <Minitest:: Test

  def setup
    @customer = Customer.new("Marie", 50)
  end

  def test_customer_name
    assert_equal("Marie", @customer.name)
  end

  def test_customer_has_cash
    assert_equal(50,@customer.cash)
  end

  def test_customer_has_not_bought_pets
    assert_equal(0,@customer.pet_purchases)
  end

  # def test_customer_can_buy_pet
  #   @customer.can_customer_buy_pet (@pet_shop)
  #   assert_equal(1,@customer.pet_purchases)
  # end

end