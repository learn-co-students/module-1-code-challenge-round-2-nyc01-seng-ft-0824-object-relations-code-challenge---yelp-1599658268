require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mcdonalds = Restaurant.new("McDonalds")
wendies = Restaurant.new("Wendies")
applebees = Restaurant.new("Applebees")
tgif = Restaurant.new("Fridays")
tbell = Restaurant.new("Taco Bell")

cliff = Customer.new("Cliff", "Jackson")
paul = Customer.new("Paul", "Smith")
jamie = Customer.new("Jamie", "Rodriguez")
sam = Customer.new("Samantha", "Ruiz")
jack = Customer.new("Jack", "Sparrow")
paule = Customer.new("Paul", "E")

rev1 = Review.new(cliff, tgif, 5)
rev2 = Review.new(cliff, applebees, 3)
rev3 = Review.new(cliff, wendies, 2)
rev4 = Review.new(paul, tgif, 3)
rev5 = Review.new(paul, mcdonalds, 2)
rev6 = Review.new(jamie, applebees, 1)
rev7 = Review.new(sam, tgif, 4)
rev8 = Review.new(sam, applebees, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line