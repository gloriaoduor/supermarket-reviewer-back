class Review < ActiveRecord::Base 
    belongs_to :supermarket
    belongs_to :shopper
end 