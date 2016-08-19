class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :wishlist
         has_many :votes
         has_many :books
         has_and_belongs_to_many :favorite_books, join_table: :favorite_books, class_name: "Book"
         has_many :favorites, through: :favorite_books, source: :book
         has_many :comments, dependent: :destroy

end
