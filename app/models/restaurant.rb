class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    #returns an array of all reviews for that restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  # def rating
  #   Review.all.select {|review| review.rating}
  # end

  def average_star_rating
  reviews.map {|review| review.rating}.sum / reviews.map {|review| review.rating}.length

  #each line works by itself. however, does not work with a division line.
  #can also create a new variable for each line to get the avg.
  #either by "rating_sum = " or we can use the shovel method and shovel in the solution
  #of each and then divide them to get the average.

  end

   

  
  end





end
