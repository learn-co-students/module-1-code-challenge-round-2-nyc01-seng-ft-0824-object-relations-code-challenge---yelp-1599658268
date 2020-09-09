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
    Review.all.select { |review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|customer| customer.full_name}.uniq
  end

  def average_star_rating
    self.reviews.map{|restaurant| restaurant.rating}.sum / reviews.length
  end

end
