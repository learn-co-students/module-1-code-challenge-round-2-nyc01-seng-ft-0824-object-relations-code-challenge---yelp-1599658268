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
    Review.all.select {|rev|rev.restaurant == self}
  end 

  def customers
    reviews.map {|cust|cust.customer}.uniq
  end 

  def average_star_rating
    reviews.map {|rating|rating.rating}.sum / reviews.map.count 
  end 

end
