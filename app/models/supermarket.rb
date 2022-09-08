class Supermarket < ActiveRecord::Base
    has_many :reviews
    has_many :shoppers, through: :reviews 
end 