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
    review.map {|review| review.rating}.sum
  end





end
