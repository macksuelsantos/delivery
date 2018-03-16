class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :phone
      t.date :birthday
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
