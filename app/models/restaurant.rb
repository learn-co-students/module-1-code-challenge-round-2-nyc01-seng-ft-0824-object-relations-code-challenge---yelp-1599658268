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
    Review.all.select{|review|review.restaurant == self}
  end
  def customers
    reviews.map{|re|re.customer}
  end
  def average_star_rating
    total = 0
    self.reviews.select {|re|total+=re.rating}
    total / reviews.length
  end

end
