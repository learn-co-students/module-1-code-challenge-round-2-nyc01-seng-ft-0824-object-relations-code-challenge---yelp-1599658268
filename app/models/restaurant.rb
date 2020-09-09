class Restaurant
  attr_reader :name
  #Does not ask for @@all in Initializers, keep in mind if needed later

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select{|rev| rev.restaurant == self}
  end

  def customers
    self.reviews.map{|rest| rest.customer}.uniq
  end























end
