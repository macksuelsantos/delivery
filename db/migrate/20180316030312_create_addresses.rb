class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :neghborhood
      t.string :zip_code
      t.string :state
      t.string :city
      t.string :number
      t.string :note

      t.timestamps
    end
  end
end
