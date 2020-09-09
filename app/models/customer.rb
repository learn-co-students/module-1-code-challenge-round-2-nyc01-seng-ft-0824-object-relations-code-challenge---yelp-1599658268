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
    review = Review.all.select{|re|re.customer == self}
    review.map{|r|r.restaurant}.uniq
  end
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end
  def num_reviews
     num = Review.all.select{|re| re.customer == self}
     num.length
  end
  def self.find_by_name(name)
    self.all.find{|s|s.full_name ==name}
  end
  def self.find_by_given_name(name)
    person = Customer.all.first
    Customer.all.each do |p|
      if p.given_name == name
        person = p
      end
    end
    person.full_name
  end
end
