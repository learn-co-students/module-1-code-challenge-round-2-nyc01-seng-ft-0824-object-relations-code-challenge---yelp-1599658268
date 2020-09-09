require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("John", "Final")
cust2 = Customer.new("Alan", "Lasting")
cust3 = Customer.new("Ruby", "Endname")

rest1 = Restaurant.new("Crabshack")
rest2 = Restaurant.new("Tacos Shop")
rest3 = Restaurant.new("Italian Subs")

review1 = Review.new(cust1, rest1, 5)
review2 = Review.new(cust2, rest2, 4)
review3 = Review.new(cust3, rest3, 2)
review4 = Review.new(cust3, rest1, 4)
review5 = Review.new(cust2, rest3, 1)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line