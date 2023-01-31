class AddUserIdToEmployers < ActiveRecord::Migration[7.0]
  def change
    add_column :employers, :user_id, :int
  end
end
