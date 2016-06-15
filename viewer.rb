require_relative('pet_shop')
require_relative('pet')
require_relative('customer')



class Viewer
  def initialize

    @customer = Customer.new("person", 0) 

    pet_1 = Pet.new("Fire", "Charamander",35)
    pet_2 = Pet.new("Water", "Squirtle",30)
    pet_3 = Pet.new("Fire", "Charizard",25)
    pet_4 = Pet.new("Grass", "Bulbasaur",40)

    pets = [ pet_1,pet_2,pet_3,pet_4 ]

    @pet_shop = PetShop.new( pets )

    @pet = Pet.new("tom", "breed", 0)
  end

  def start
    puts "Welcome to the Pet Shop!!"
    puts "What's your name?"
    name = gets.chomp()
    @customer.name = name
    puts "Welcome #{name} how much cash do you have"
    cash = gets.to_f
    @customer.cash = cash
    if @customer.cash < @pet.price
      puts "NO"
    else
    puts "Cool,  
    these are the animals you can buy"
    display_affordable_animals( @customer.cash )
  end
  end

  def display_affordable_animals(cash)
    afforable_animals = @pet_shop.get_pet_by_price( cash )
    for animal in afforable_animals
        puts animal
    end
  end

end

viewer = Viewer.new()
viewer.start()