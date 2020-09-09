require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Marco", "Hernandez")
c2 = Customer.new("Danielle", "Mazzo")
c3 = Customer.new("Jorge", "Rodriguez")
c4 = Customer.new("Marco", "Roman")
c5 = Customer.new("Edwin", "Banks")

r1 = Restaurant.new("Fridays")
r2 = Restaurant.new("Cherries")
r3 = Restaurant.new("Olive")
r4 = Restaurant.new("Vegains")
r5 = Restaurant.new("Killer Vegan")
r6 = Restaurant.new("Fruit Bowls")

rev1 = Review.new(c2, r1, 7)
rev2 = Review.new(c1, r3, 10)
rev3 = Review.new(c2 , r6, 6)
rev4 = Review.new(c5, r2, 5)
rev5 = Review.new(c4, r4, 8)
rev6 = Review.new(c1, r2, 10)
rev7 = Review.new(c1, r2, 3)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line