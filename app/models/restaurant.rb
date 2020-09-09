class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def. self.all
    @all
  end

  def restaurant_reviews
    self.review.all.map { |r| r.rating.all = self }
  end

  def restaurant_customers
    self.customer.all.map { |r| r.full_name.all = self}
  end

  def restaurant_average_star_rating
    total_ratings = ratings.all.length
    total_ratings = 0
    Review.all.each do 
      total_ratings += review.ratings
  end
  total_ratings / review.ratings
end

end
