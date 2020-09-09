class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    review.all.select{|restaurant|restaurant.review == self}
  end

  def customers
    self.reviews.map{|review|review.customer}.uniq
  end

  def self.all
    @@all
  end
end
