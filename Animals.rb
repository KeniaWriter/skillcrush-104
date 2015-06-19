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
    
    def set_name=(name)
        #this is an instance variable
        @name = name
    end
    
    def get_name
        return @name
    end
    
    def set_food=(food)
        @food = food
    end
    
    def get_food
        return @food
    end
    
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

my_platypus.set_name="Mr. Bill"
my_platypus.set_food="fish"
my_flyingSquirrel.set_name="Fillis"
my_flyingSquirrel.set_food="acorns"

platypus_name = my_platypus.get_name
platypus_food = my_platypus.get_food
flyingSquirrel_name = my_flyingSquirrel.get_name
flyingSquirrel_food = my_flyingSquirrel.get_food

puts "#{platypus_name} loves to eat #{platypus_food}. He says #{my_platypus.quack} while he #{my_platypus.lay_egg}."
puts "#{flyingSquirrel_name} loves to eat #{flyingSquirrel_food}. She says #{my_flyingSquirrel.squeek} while she #{my_flyingSquirrel.fly}."

puts my_platypus.inspect
puts my_flyingSquirrel.inspect

puts "There are #{Animals.current_count} animals."
puts Animals.inspect
