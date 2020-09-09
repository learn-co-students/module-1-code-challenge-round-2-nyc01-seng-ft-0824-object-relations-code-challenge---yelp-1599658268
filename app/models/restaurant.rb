class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    # Go to the Review class, iterate through all and select the ones for this instance
  end

  def customers
    # using previous method, iterate through and find a unique list of all customer names
  end

  def average_star_rating
    # find the sum of the ratings, then divide by (some) length
  end

end
