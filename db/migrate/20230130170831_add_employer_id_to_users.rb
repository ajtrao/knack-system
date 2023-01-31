class AddEmployerIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :employer_id, :int
  end
end
