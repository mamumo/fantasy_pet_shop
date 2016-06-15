class PetShop

  def initialize( pets )
    @pets = pets
    # @pets_sold = []
  end

  def number_of_pets
    @pets.length()
  end

  def get_pet
    @pets.pop
  end

  def number_of_pets_sold
    number = @pet_shop.number_of_pets
    sold = @customer.pet_purchases
    return number - sold
  end

end