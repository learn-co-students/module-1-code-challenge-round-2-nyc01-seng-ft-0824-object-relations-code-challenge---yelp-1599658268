require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

larry = Customer.new("Larry", "Stooge")
moe = Customer.new("Moe", "Stooge")
curly = Customer.new("Curly", "Stooge")

ginas = Restaurant.new("Gina's")
tonys = Restaurant.new("Tony's")
aris = Restaurant.new("Ari's")

review1 = Review.new(larry, ginas, 3)
review2 = Review.new(moe, tonys, 1)
review3 = Review.new(curly, aris, 5)
review4 = Review.new(curly, ginas, 2)
review5 = Review.new(moe, aris, 4)
review6 = Review.new(larry, aris, 5)
review7 = Review.new(curly, tonys, 3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line