class Book < ApplicationRecord
	belongs_to :category
	belongs_to :author
	has_many :comments, dependent: :destroy
	belongs_to :languages
	belongs_to :publisher
 	has_and_belongs_to_many :wishlists
 	has_many :votes
 	has_many :voters, through: :votes, source: :user

 	def average_rating
    #votes.average(:rating).to_s
    rating = votes.average(:rating)
    rating ? rating.to_s : "0.0"
  	end

end
