class CreateBooksWishlists < ActiveRecord::Migration[5.0]
  def change
    create_table :books_wishlists do |t|
    	t.references :book
    	t.references :wishlist
    end
  end
end
