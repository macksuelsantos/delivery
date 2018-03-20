class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :client, foreign_key: true, index: true
      t.references :address, foreign_key: true, index: true
      t.string :status
      t.string :payment
      t.string :delivery_guy
      t.decimal :fare, :precision => 8, :scale => 2
      t.string :note

      t.timestamps
    end
  end
end
