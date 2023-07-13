class CreateFacilities < ActiveRecord::Migration[5.0]
  def change
    create_table :facilities do |t|
      t.string :description
      t.string :type
      t.string :icon

      t.timestamps
    end
  end
end
