class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.integer :userLevel

      t.timestamps
    end
  end
end
