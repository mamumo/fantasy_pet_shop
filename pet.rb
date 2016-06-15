class Pet

  attr_reader :type, :breed, :price

  def initialize(type,breed,price)
    @type = type
    @breed = breed
    @price = price
  end

end