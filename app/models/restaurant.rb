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


      def reviews
          Review.all.select{ |rev| rev.restaurant }
# ***
      end

      def customers
          Review.all.filter{ |rev| rev.restaurant == self }
# ***
      end
end
