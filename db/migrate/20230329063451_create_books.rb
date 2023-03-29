class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :imageURL
      t.string :title, null: false
      t.string :description, null: false
      t.integer :pages
      t.string :publication_date
      t.string :genres
      t.string :author

      t.timestamps
    end
  end
end
