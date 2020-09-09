class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def given_name
   "#{given_name}"
end"

  def family_name
    "#{family_name}"
  end

  def full_name(given_name, family_name)
    "#{"
  end


  def self.all
    Customer.all.select { |m| m.full_name = self }
  end

  def self.Restaurant
    Customer.all.map { |m| m.name.all = self}
  end

  def self.add_review(restaurant, rating)
    Customer.review.all.map { |restaurant, rating| m.name.uniq }
  end

  def self.num_reviews
    Customer.review.all.map { |r| r.Customer.rating += Customer.review }
  end

  def self.find_by_name(name)
    Customer.review.all.select { |r| r.Customer.full_name.map }
  end

  def Customer.find_all_by_given_name(name)
    Customer.name.all.select { |r| r.Customer.name = given_name }
  end

end
