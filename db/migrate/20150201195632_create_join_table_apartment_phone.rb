class CreateJoinTableApartmentPhone < ActiveRecord::Migration
  def change
    create_join_table :apartments, :phones do |t|
      t.integer :apartment_id
      t.integer :phone_id

      t.index [:apartment_id, :phone_id]
      t.index [:phone_id, :apartment_id]
    end
  end
end
