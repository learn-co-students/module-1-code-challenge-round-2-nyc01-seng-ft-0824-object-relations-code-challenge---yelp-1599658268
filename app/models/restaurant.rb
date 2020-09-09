class Restaurant
  attr_reader :name
  @@all = [] # <=== additional comment below
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    rating = 0
    rating = self.reviews.map{|review| review.rating}.sum / self.reviews.length
    rating.round(2)
  end
   ########## ^^additional comments below
  def self.all
    @@all
  end

end

# README didn't instruct Restaurant.all class method
# however I felt it was good practice to add in case
# it can be used for additional helper methods or just 
# to see all Restaurant objects/instances

### for average_star_rating i didn't like the number being returned
### having a bunch of decimals if there are floats are reviews
### so did rating = 0 and have it equal to the sum of the array and 
### then do the .round(2) to just have a couple of decimals