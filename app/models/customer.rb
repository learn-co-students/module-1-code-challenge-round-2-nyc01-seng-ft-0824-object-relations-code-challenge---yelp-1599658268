class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  

  def restaurants
    # go through Reviews, select the ones where the customer has been, and use uniq enum
      # is this supposed to return just the restaurant's name? - instances!
      Review.all.select{|review| review.customer == self}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    # returns total number of reviews customer has authored
      # will use sum enum or local variable to += 1
        # sum didn't work...try length or count?
          # changed from map which is counting number of all reviews to select
      Review.all.select{|review| review.customer == self}.count
  end

  def self.find_by_name(name)
    # given full name, return the FIRST customer whose full name matches 
      # use find enum
      self.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.find_all{|customer| customer.given_name == name}
  end

end
