class Restaurant

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    self.reviews.collect { |review| review.rating }.sum / self.reviews.length
  end

end
