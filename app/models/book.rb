class Book < ApplicationRecord
	belongs_to :category
	belongs_to :author
	has_many :comments
	belongs_to :languages
	belongs_to :publisher
 	has_and_belongs_to_many :wishlists
 	has_many :votes
end
