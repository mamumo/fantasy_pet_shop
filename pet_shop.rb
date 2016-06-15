class PetShop

  def initialize( pets )
    @pets = pets
  end

  def number_of_pets
    @pets.length()
  end

  def get_pet
    @pets.pop
  end
end