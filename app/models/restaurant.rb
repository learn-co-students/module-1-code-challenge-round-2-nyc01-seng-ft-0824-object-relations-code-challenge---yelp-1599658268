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
    self.reviews.map{|review| review.rating}.sum / self.reviews.length
  end
  
  def self.all
    @@all
  end

end

#### README didn't instruct Restaurant.all class method
#### however I felt it was good practice to add in case
#### it can be used for additional helper methods or just 
#### to see all Restaurant objects/instances