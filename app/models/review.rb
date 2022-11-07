class Review < ActiveRecord::Base

    # returns user and product instance
    belongs_to :user
    belongs_to :product

    def print_review
        puts "Review for #{self.product.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}"
    end

end