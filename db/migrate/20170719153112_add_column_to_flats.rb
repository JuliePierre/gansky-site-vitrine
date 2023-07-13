class AddColumnToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :availability_date, :date
  end
end
