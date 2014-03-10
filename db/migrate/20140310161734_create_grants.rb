class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.string :name
      t.date :start
      t.date :deadline
      t.integer :status
      t.belongs_to :funders
      t.belongs_to :users

      t.timestamps
    end
  end
end
