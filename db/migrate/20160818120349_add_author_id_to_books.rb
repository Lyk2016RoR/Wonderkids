class AddAuthorIdToBooks < ActiveRecord::Migration[5.0]
  def change
  	add_reference :books, :author, foreing_key: true
  end
end
