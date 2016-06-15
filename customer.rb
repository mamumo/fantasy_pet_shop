class Customer

  attr_accessor :name, :cash

  def initialize(name,cash)
    @name = name
    @cash = cash
    @pet_purchases = []
  end

  def pet_purchases
    @pet_purchases.length()
  end

  def take_pet (pet_shop)
    pet = pet_shop.get_pet()
    @pet_purchases << pet # we need to change this
  end

  def pays_for_pet(price)
     return @cash = @cash - price
  end

end