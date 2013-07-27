class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :city_id
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
