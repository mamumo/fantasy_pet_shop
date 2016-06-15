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

end