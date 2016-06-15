class Customer

  attr_accessor :name, :cash

  def initialize(name,cash)
    @name = name
    @cash = cash
    @pet_purchases = []
  end

  def pet_purchases
    @pet_purchases.count()
  end


end