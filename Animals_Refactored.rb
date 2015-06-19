class Animals

    #this is a class variable
    @@total_animals = 0
    
    #this is a class method that modifies the .new class
    def initialize
        @@total_animals += 1
        
    end
    
    def self.current_count
        return @@total_animals
    end
    
    attr_writer :name, :food
    attr_reader :name, :food
    
end


class Platypus < Animals
    
    def lay_egg
        return "lays an egg"
    end
    
    def quack
        return "\"quack\""
    end

end

class FlyingSquirrel < Animals
    
    def fly
        return "zooms between the treetops"
    end
    
    def squeek
        return "\"squeek Squeekums squeekers\""
    end
    
end

my_platypus = Platypus.new
my_flyingSquirrel = FlyingSquirrel.new

my_platypus.name="Mr. Bill"
my_platypus.food="fish"
my_flyingSquirrel.name="Fillis"
my_flyingSquirrel.food="acorns"

platypus_name = my_platypus.name
platypus_food = my_platypus.food
flyingSquirrel_name = my_flyingSquirrel.name
flyingSquirrel_food = my_flyingSquirrel.food

puts "#{platypus_name} loves to eat #{platypus_food}. He says #{my_platypus.quack} while he #{my_platypus.lay_egg}."
puts "#{flyingSquirrel_name} loves to eat #{flyingSquirrel_food}. She says #{my_flyingSquirrel.squeek} while she #{my_flyingSquirrel.fly}."

puts my_platypus.inspect
puts my_flyingSquirrel.inspect

puts "There are #{Animals.current_count} animals."
puts Animals.inspect
