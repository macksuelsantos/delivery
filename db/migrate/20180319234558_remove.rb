class Remove < ActiveRecord::Migration[5.1]
  def change
    remove_reference :orders, :address, index: true, foreign_key: true
  end
end
