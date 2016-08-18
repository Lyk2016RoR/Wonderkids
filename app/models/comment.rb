class Comment < ApplicationRecord

validates :body, length: {minimum: 5}

belongs_to :book

end
