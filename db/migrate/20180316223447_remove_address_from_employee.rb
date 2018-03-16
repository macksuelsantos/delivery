class RemoveAddressFromEmployee < ActiveRecord::Migration[5.1]
  def change
    remove_reference(:employees, :address, index: true, foreign_key: true)
  end
end
