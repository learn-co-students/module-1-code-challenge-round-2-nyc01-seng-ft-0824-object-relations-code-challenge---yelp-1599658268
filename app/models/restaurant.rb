class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end
  
  def customers
    self.reviews.map {|review| review.customer}
  end
end
