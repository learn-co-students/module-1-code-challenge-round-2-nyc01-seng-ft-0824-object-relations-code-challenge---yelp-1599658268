require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

italian = Restaurant.new("Vinnys")
burger = Restaurant.new("Shake Shack")
pizza = Restaurant.new("Ginos")

steven = Customer.new("Steven", "Thomas")
henry = Customer.new("Henry", "Cavill")
ezra = Customer.new("Ezra", "Miller")
john = Customer.new("John", "Doe")

review1 = Review.new(steven, italian, 3)
review2 = Review.new(henry, burger, 4)
review3 = Review.new(ezra, burger, 1)
review4 = Review.new(ezra, pizza, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line