class RestaurantCutsomer
      attr_accessor :restaurant, :customer

      @@all = []
      

      def initialize(restaurant, customer)
          @restaurant = restaurant
          @customer   = customer

          @@all << self
      end
      def  self.all
           @@all
      end



end 