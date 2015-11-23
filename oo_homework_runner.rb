require_relative ('oo_homewrok')

# Question 1. Create a Bear Class, allow it to be instantiated with a 'name' and 'type' instance variable. Instantiate a couple of bears setting their name and type ( eg Bear.new('Yogi', 'Grizzly') )

yogi = Bear.new("Yogi", "Grizzly")
bubu = Bear.new("Bubu", "Brown")
balo = Bear.new("Balo", "Sloth")
ben = Bear.new("Gentle-Ben", "Brown")


# Question 2. Give the bear a roar method. Make your bears roar.

bubu.roar



# Question 3 Create a Fish Class. Again give the fish a 'name' instance variable.



#  QUESTION 4. Create a River class. Allow the river to be instantiate with an 
# array of fishes. ( see Bank example )



# QUESTION 5 Instantiate three fish objects. 

pike = Fish.new("Pike", 2)
trout = Fish.new("Trout", 3)
roach = Fish.new("Roach", 15)
perch = Fish.new("Perch", 25)
minnow = Fish.new("Minnow", 2001)
salmon = Fish.new("Salmon", 6)

# QUESTION 6 Instantiate a river object that has these three fishes in an array.

fish = [pike, trout, roach, perch, minnow, salmon]

tweed = River.new(fish)




# QUESTION 7 When bears are initialized give them an empty 'food' array instance variable.

yogi.eat_fish("Trout", 2, tweed)
yogi.eat_fish("Minnow", 15, tweed)
 #This will add one to the bears food array instance variable
tweed.fish_population

# QUESTION 8 Allow the bear to 'take_fish_from' the river. Taking a fish from the river should remove it from the river fishes array and add it to the bear's food array.





# Note: Array.pop may come in useful here

# Note: How we do we show/test that the fish has moved from the river's fishes to the bear's food? ( .inspect reveals a human readable string for an object )