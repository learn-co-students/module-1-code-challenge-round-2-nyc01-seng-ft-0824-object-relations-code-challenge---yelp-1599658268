require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Joe", "Mama")
c2 = Customer.new("Jeff", "Po")
c3 = Customer.new("Shannon", "Lime")

r1 = Restaurant.new("Clams")
r2 = Restaurant.new("Meat")
r3 = Restaurant.new("Salads")

re1 = Review.new(c1, r3, 4)
re2 = Review.new(c3, r2, 6)
re3 = Review.new(c2, r1, 7)
re4 = Review.new(c3, r1, 9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line