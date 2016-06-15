require ('minitest/autorun')
require_relative('../pet.rb')

class TestPets < Minitest::Test
  def setup
    @pet = Pet.new("Fire","Charamander", 25)
  end

  def test_does_pet_have_type
    assert_equal("Fire", @pet.type())
  end

end
