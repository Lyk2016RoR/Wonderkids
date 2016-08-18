class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.date :publish_date
      t.string :description
      t.string :ISBN
      t.string :views_count

      t.timestamps
    end
  end
end
