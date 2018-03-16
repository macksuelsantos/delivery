class RenameColumnNeghborhoodInAddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :neghborhood, :neighborhood
  end
end
