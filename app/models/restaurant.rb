class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    # Go to the Review class, iterate through all and select the ones for this instance
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    # using previous method, iterate through and find a unique list of all customer names
    self.reviews.map{|review| review.customer.full_name}.uniq
  end

  def average_star_rating
    # find the sum of the ratings through the reviews method, then divide by (some) length
    self.reviews.sum{|review| review.rating} / self.reviews.length
  end

end
