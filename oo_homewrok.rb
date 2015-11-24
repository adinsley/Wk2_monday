# BEAR CLASS ___________________________________________

class Bear
  def initialize(name, type)
      @name = name
      @type = type
      @energy = 0
  end

  def roar
    puts "#{@name} roared his loadest roar and said \"#{@type} Bears are the bravest bears\""
  end

  def eat_fish(type, amount, river)
    @energy += type.calorie_value * amount
    river.bear_takes(type, amount)
    puts "Bear: #{@name}  Energy Level: #{@energy}"
    
  end  
end

# QUESTION 4_______________________________________________

class Fish
  def initialize(name, calories, number)
      @name = name
      @number = number
      @calories = calories
  end

  def fish_name
    @name
  end  

  def number
    @number
  end

  def calorie_value
    @calories
  end

  def add_to_population(change_in_population)
    @number += change_in_population
  end


end  

class River
  def initialize(fish)
      @fish = fish
  end     

  def bear_takes(type, amount) 
    @fish.each{|fish| fish.add_to_population(amount * -1) if fish.fish_name == type.fish_name}
  end

  def fish_population
    @fish.each{|fish| puts "Type: #{fish.fish_name} - Population: #{fish.number}"}
  end  
end


        
