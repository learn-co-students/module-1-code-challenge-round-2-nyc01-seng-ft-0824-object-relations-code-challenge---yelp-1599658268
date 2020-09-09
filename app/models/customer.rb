class Customer
      attr_accessor :given_name, :family_name

      @@all = []


      def initialize(given_name, family_name)
          @given_name   =  given_name.to_s
          @family_name  = family_name.to_s

          @@all << self
      end
      def  self.all
           @@all
      end 

 
      def  full_name
           "#{given_name} #{family_name}"
      end


      def  restaurants 
           Review.all.map{ |rev_i| rev_i.restaurant }.uniq
      end

      def reviews
          Review.all.filter{ |rev| rev.customer == self }
      end
      def num_reviews
          reviews.length
      end

      def  Customer.find_by_given_name(name)
           self.all.filter{ |cust| cust.given_name == name }
      end
      def  Customer.find_by_name(name)
           self.all.filter{ |cust| cust.full_name == name }
      end



end
