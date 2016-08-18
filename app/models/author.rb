class Author < ApplicationRecord

validates :name, presence: true
validates :description, length: {minimum: 5}

has_many :books

end


