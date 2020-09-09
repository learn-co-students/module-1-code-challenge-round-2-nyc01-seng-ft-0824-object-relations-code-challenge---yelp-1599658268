require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console







#### Customers

billybob = Customer.new("BILLYBOB", "BOHWJAHNGZ")
bobby    = Customer.new("Bobby", "O")
wanda    = Customer.new("Wanda", "Spike")

####  (given_name, family_name)




#### Restaurants 

eljobo   = Restaurant.new("El Jobo")
estrella = Restaurant.new("Estrella")

mamags   = Restaurant.new("MamaGs")
papaye   = Restaurant.new("PapaYe")

zeez     = Restaurant.new("Zeeez")

####  (name)




#### Reviews

eljobo_rev   = Review.new(wanda, eljobo,   4)
estrella_rev = Review.new(wanda, estrella, 5)

mamags_rev   = Review.new(bobby, mamags,   5)
papaye_rev   = Review.new(bobby, papaye,   4)

zeez_rev1     = Review.new(billybob, zeez,  2)
zeez_rev2     = Review.new(bobby,    zeez,  5)
zeez_rev3     = Review.new(wanda,    zeez, 12)

####  (customer, restaurant, rating)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line