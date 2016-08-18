class AddLanguageIdToBooks < ActiveRecord::Migration[5.0]

  def change
  	add_reference :books, :language, foreing_key: true
  end
end
