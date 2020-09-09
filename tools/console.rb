require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("chloe", "chang")
cust2 = Customer.new("jim", "jimmyson")

rest1 = Restaurant.new("JWF")
rest2 = Restaurant.new("sam woo")

rev1 = Review.new(cust1, rest1, 5)
rev2 = Review.new(cust1, rest2, 3)
rev3 = Review.new(cust2, rest1, 2)
rev4 = Review.new(cust2, rest2, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line