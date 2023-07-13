class AddLinkToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :virtual_visit, :string
  end
end
