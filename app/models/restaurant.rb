class Restaurant
      attr_reader :name

      @@all = []


      def initialize(name)
          @name = name

          @@all << self
      end
      def  self.all
           @@all
      end 


      def  reviews
           Review.all.select{ |rev| rev.restaurant == self }
      end

      def  customers
           reviews.map{ |rev_i| rev_i.customer }.uniq
      end


      def  average_star_rating
           reviews.collect{ |rev_i| rev_i.rating }.sum / reviews.length
      end
end
