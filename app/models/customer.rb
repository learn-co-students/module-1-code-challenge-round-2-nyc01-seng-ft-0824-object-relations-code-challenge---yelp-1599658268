class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  
  def self.all
    @@all
  end

  def restaurants
    # go through Reviews, select the ones where the customer has been, and use uniq enum
      # is this supposed to return just the restaurant's name?
      Review.all.select{|review| review.customer == self}.uniq
    # Review.all.select{|review| review.customer == self}.map{|restaurant| restaurant.name}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    # returns total number of reviews customer has authored
      # will use sum enum or local variable to += 1
        # sum didn't work...try length or count?
          # change from mapping which is counting number of all reviews to select
      Review.all.select{|review| review.customer == self}.count
  end

  def self.find_by_name(name)

  end

end
