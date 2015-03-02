class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.string :name
      t.date :start
      t.date :deadline
      t.integer :status_id
      t.integer :funder_id
      t.integer :user_id

      t.timestamps
    end
  end
end
