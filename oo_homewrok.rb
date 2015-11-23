# BEAR CLASS ___________________________________________

class Bear
  def initialize(name, type)
      @name = name
      @type = type
      @food = 0
  end

  def roar
    puts "#{@name} roared his loadest roar and said \"#{@type} Bears are the bravest bears\""
  end

  def eat_fish(type, amount, river)
    @food += amount
    river.bear_takes(type, amount)
    puts "Bear: #{@name}  Food Level: #{@food}"
    
  end  
end

# QUESTION 4_______________________________________________

class Fish
  def initialize(name, number)
      @name = name
      @number = number
  end

  def fish_name
    @name
  end  

  def number
    @number
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
    @fish.each{|fish| fish.add_to_population(amount * -1) if fish.fish_name == type}
  end

  def fish_population
    @fish.each{|fish| puts "Type: #{fish.fish_name} - Population: #{fish.number}"}
  end  
end


        
