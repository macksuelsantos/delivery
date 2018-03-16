class AddReferecesEmployeeToAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :addresses, :employee, foreign_key: true, index: true
  end
end
