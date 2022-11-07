class Review < ActiveRecord::Base
    # returns user and product instance
    belongs_to :user
    belongs_to :product

end