class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :nb_rooms
      t.float :price_per_room
      t.boolean :occupied

      t.timestamps
    end
  end
end
