class CreateProductItems < ActiveRecord::Migration[5.1]
  def change
    create_table :product_items do |t|
      t.references :product, foreign_key: true, index: true
      t.decimal :amount, :precision => 8, :scale => 2
      t.decimal :price, :precision => 8, :scale => 2
      t.references :order, foreign_key: true, index: true

      t.timestamps
    end
  end
end
