class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :weight, :precision => 8, :scale => 2
      t.references :unit, foreign_key: true, index: true

      t.timestamps
    end
  end
end
