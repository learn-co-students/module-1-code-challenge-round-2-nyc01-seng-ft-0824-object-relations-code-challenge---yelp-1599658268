require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

dragonstone = Restaurant.new("Dragonstone")
kings_landing = Restaurant.new("Kings Landing")
winterfell = Restaurant.new("Winterfell")

daenerys = Customer.new("Daenerys", "Targaryen")
cersei = Customer.new("Cersei", "Lannister")
sansa = Customer.new("Sansa", "Stark")

dr_review = Review.new(daenerys, dragonstone, 4)
kl_review = Review.new(cersei, kings_landing, 2)
wf_review = Review.new(sansa, winterfell, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line