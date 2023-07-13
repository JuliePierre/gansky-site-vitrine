class RenameColumnInFacilities < ActiveRecord::Migration[5.0]
  def change
    rename_column :facilities, :type, :category
  end
end
