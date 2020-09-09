require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cust1 = Customer.new("Ali", "Jones")
cust2 = Customer.new("Tim", "Carter")

rest1 = Restaurant.new("Olives")
rest2 = Restaurant.new("Sizzlers")

rev1 = Review.new(cust1, "Olives", 7)
rev2 = Review.new(cust2, "Sizzlers", 4)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line