require'minitest/autorun'
require_relative'../pet_shop.rb'
require_relative'../pet.rb'



class TestPetShop < Minitest::Test
  def setup
    pet_1 = Pet.new("Fire", "Charamander")
    pet_2 = Pet.new("Water", "Squirtle")
    pet_3 = Pet.new("Fire", "Charizard")
    pet_4 = Pet.new("Grass", "Bulbasaur")

    pets = [ pet_1,pet_2,pet_3,pet_4 ]

    @pet_shop = PetShop.new( pets )
  end

  def test_initial_state
    assert_equal(4, @pet_shop.number_of_pets())
  end
  
end