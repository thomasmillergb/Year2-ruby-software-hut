class CreateDeliverables < ActiveRecord::Migration
  def change
    create_table :deliverables do |t|
      t.belongs_to :grants
      t.string :name
      t.string :description
      t.date :start
      t.date :deadline
      t.integer :status

      t.timestamps
    end
  end
end
