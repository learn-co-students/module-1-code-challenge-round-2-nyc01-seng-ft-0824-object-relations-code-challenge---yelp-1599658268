require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


john = Customer.new("John", "Joe")
testingA_R = Customer.new("Grimey", "Tilted")

goodeats = Restaurant.new("GoodEats")


review1 = Review.new(john, goodeats, 5)
review2 = Review.new(john, goodeats, 4.5) 
#testing .uniq for Restaurant#customers & Customer#restaurants
binding.pry
0 #leave this here to ensure binding.pry isn't the last line