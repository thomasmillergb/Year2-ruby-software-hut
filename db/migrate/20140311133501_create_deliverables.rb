class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.integer :grants_id
      t.string :name
      t.string :description
      t.date :start
      t.date :deadline
      t.integer :status

      t.timestamps
    end
  end
end
