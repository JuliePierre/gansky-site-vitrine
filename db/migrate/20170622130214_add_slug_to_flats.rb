class AddSlugToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :slug, :string
    add_index :flats, :slug, unique: true
  end
end
