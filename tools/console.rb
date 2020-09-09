require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Mushfi", "Chowdhury")
cust2 = Customer.new("Edward", "Elric")
cust3 = Customer.new("Roy", "Mustang")
cust4 = Customer.new("Roy", "Camaro")
cust5 = Customer.new("Roy", "Challenger")

rest1 = Restaurant.new("Philosopher's Cafe")
rest2 = Restaurant.new("Full Metal Gastropub")

rev1 = Review.new(cust1, rest1, 4)
rev3 = Review.new(cust2, rest1, 5)
rev5 = Review.new(cust1, rest1, 3)

rev2 = Review.new(cust1, rest2, 2)
rev4 = Review.new(cust3, rest2, 4)
rev6 = Review.new(cust2, rest2, 1)
rev7 = Review.new(cust4, rest2, 5)
rev8 = Review.new(cust5, rest2, 100)









binding.pry
0 #leave this here to ensure binding.pry isn't the last line