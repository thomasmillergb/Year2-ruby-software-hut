class CreateAddUsers < ActiveRecord::Migration
  def change
    create_table :add_users do |t|
      t.string :name
      t.string :password
      t.integer :level
      t.string :email

      t.timestamps
    end
  end
end
