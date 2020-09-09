require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cus1 = Customer.new("May", "Chen")
cus2 = Customer.new("Ben", "Smith")

rest1 = Restaurant.new("DB Bistro")
rest2 = Restaurant.new("Cafe Boulud")

rev1 = Review.new(cus1, rest1, 4)
rev2 = Review.new(cus2, rest2, 3.5)
rev3 = Review.new(cus1, rest2, 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line