class Shopper < ActiveRecord::Base 
    has_many :reviews 
    has_many :supermarkets, through: :reviews 
end 