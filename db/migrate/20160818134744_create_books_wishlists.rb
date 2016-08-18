class CreateBooksWishlists < ActiveRecord::Migration[5.0]
  def change
    create_table :books_wishlists do |t|
    	t.references :books
    	t.references :wishlists
    end
  end
end
