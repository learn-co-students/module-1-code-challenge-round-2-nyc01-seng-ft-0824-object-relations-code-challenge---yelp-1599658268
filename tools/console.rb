require_relative '../config/environment.rb'
#require_relative '../app/models.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust0 = Customer.new('', '')
cust1 = Customer.new(George, Washington)
cust2 = Customer.new(John, Adams)
cust3 = Customer.new(Thomas, Jefferson)
cust4 = Customer.new(James, Madison)

1776 = Restaurant.new(1776)

review_1 = Review.new()
review_2 = Review.new()
review_3 = Review.new()
review_4 = Review.new()


binding.pry
0 #leave this here to ensure binding.pry isn't the last line