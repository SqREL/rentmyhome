class CreateApartmentPhotos < ActiveRecord::Migration
  def change
    create_table :apartment_photos do |t|
      t.string :image
      t.integer :apartment_photo_id
      t.index :apartment_photo_id

      t.timestamps null: false
    end
  end
end
