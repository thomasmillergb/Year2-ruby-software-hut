class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.string :name
      t.date :dateStarted
      t.integer :status
      t.date :allocationDeadline

      t.timestamps
    end
  end
end
