class PetShop

  attr_reader :total

  def initialize( pets )
    @pets = pets
    @total = 0
  end

  def number_of_pets
    @pets.length()
  end

  def get_pet
    @pets.pop
  end

  def get_pet_by_price(cash)
    affordable_pets = []

    for pet in @pets
      affordable_pets << pet.breed if pet.price <= cash
    end
      return affordable_pets[0]
  end

  def receives_cash(cash)
    return @total = @total + cash
  end

end