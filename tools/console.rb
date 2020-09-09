require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


john = Customer.new("John", "Joe")
steve = Customer.new("Steve", "Real")
testingA_R = Customer.new("Grimey", "Tilted") #testing Customer#add_review
# anothajohn = Customer.new("John" "Fake")
# onemojohn = Customer.new("John", "Third")
# ^for some above instances wouldn't allow me to test, kept getting arugment error.
# ^can't have duplicate strings for given_name in initialize?
# ^however the .find_all_by_given_name method does give me back an array so it works
# ^just wanted to see if customers with same first name would return in the array if they have diff last names.


goodeats = Restaurant.new("GoodEats")
justchicken = Restaurant.new("Just Chicken")


review1 = Review.new(john, goodeats, 5)
review2 = Review.new(john, goodeats, 4.5) 
# ^^ testing .uniq for Restaurant#customers & Customer#restaurants
review3 = Review.new(steve, justchicken, 4)
review4 = Review.new(steve, goodeats, 5)
review5 = Review.new(john, justchicken, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line