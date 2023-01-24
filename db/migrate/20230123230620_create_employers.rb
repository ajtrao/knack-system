class CreateEmployers < ActiveRecord::Migration[7.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.integer :salary
      t.string :department

      t.timestamps
    end
  end
end
