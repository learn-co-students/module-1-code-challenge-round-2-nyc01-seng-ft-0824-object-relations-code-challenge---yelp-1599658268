class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.filter { |rev| rev.restaurant == self }
  end

  def customers 
    reviews.map { |cust| cust.customer }.uniq
  end
  
end
