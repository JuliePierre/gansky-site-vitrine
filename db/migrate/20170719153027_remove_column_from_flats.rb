class RemoveColumnFromFlats < ActiveRecord::Migration[5.0]
  def change
    remove_column :flats, :availability_date
  end
end
