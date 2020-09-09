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

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    self.reviews.filter {|customer| customer.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
            ## This method? (doesn't work)
    if self.full_name == name # why can't I use my full_name method here?
      self
    end
            ## OR this method (doesn't work)
    if self == name  #This one won't work either. not sure what I'm doing wrong.
      self.full_name
    end

    ## I know that I need to go the list of full names and match the argument that is passed in, 
    ## and then return the first person. 
    ## I would use a .first here once I found all the names that match.
  end

  def self.find_all_by_given_name(name)
    all_names = []
    if self.given_name == name # again, I'm missing something here and not sure what it is.
      all_names << name
    end
    all_names

    ##  Again, I know I need to go through all of the given names that match the argument of name that is passed in,
    ##  and then collect it in an array
    ##  Once I have completed the iteration, I need to return that array which will provide all the customers with that given name
  end

end
