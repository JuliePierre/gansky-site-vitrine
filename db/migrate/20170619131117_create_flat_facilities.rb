class CreateFlatFacilities < ActiveRecord::Migration[5.0]
  def change
    create_table :flat_facilities do |t|
      t.references :flat, foreign_key: true
      t.references :facility, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
