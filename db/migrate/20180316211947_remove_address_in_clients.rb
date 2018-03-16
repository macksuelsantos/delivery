class RemoveAddressInClients < ActiveRecord::Migration[5.1]
  def change
    remove_reference :clients, :address, index: true, foreign_key: true
  end
end
