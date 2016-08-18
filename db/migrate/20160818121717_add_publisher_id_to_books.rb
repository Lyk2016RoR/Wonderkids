class AddPublisherIdToBooks < ActiveRecord::Migration[5.0]
  def change
  	add_reference :books, :publisher, foreing_key: true
  end
end
