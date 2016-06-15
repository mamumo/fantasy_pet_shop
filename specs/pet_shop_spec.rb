require'minitest/autorun'
require_relative'../pet_shop.rb'
require_relative'../pet.rb'
require_relative'../customer.rb'



class TestPetShop < Minitest::Test
  def setup
    @customer = Customer.new("Marie", 25)

    pet_1 = Pet.new("Fire", "Charamander",35)
    pet_2 = Pet.new("Water", "Squirtle",30)
    pet_3 = Pet.new("Fire", "Charizard",25)
    pet_4 = Pet.new("Grass", "Bulbasaur",40)

    pets = [ pet_1,pet_2,pet_3,pet_4 ]

    @pet_shop = PetShop.new( pets )
  end

  def test_initial_state
    assert_equal(4, @pet_shop.number_of_pets())
  end

  def test_can_get_pet
    purchased_pet = @pet_shop.get_pet()
    assert_equal("Grass", purchased_pet.type())
  end

  def test_pet_leaves_pet_shop
    @pet_shop.get_pet()
    assert_equal(3,@pet_shop.number_of_pets())
  end

  def test_get_pet_by_price
    assert_equal(["Charizard"],@pet_shop.get_pet_by_price(@customer.cash))
  end

  def test_pet_shop_total_cash
    assert_equal(0,@pet_shop.total)
  end

  def test_pet_shop_receieves_cash
    @pet_shop.receives_cash(@pet_shop.get_pet.price)
    assert_equal(40,@pet_shop.total)
  end




end