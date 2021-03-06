class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :service, null: false
      t.string :url, null: false
      t.string :title, null: false
      t.string :currency
      t.text :description

      t.integer :floor
      t.integer :rooms
      t.integer :price

      t.string :added_at

      t.boolean :makler

      t.timestamps null: false

      t.index :url, unique: true
    end
  end
end
