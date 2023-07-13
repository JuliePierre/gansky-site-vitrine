class AddColumnsToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :sub_description, :text
    add_column :flats, :zipcode, :string
    add_column :flats, :city, :string
    add_column :flats, :neighborhood, :string
    add_column :flats, :availability_date, :string
  end
end
