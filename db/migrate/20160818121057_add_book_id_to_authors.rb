class AddBookIdToAuthors < ActiveRecord::Migration[5.0]
  def change
  	add_reference :authors, :book, foreing_key: true
  end
end
