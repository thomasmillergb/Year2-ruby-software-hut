class CreateGrantAllocations < ActiveRecord::Migration
  def change
    create_table :grant_allocations do |t|
      t.integer :user_id
      t.integer :grant_id

      t.timestamps
    end
  end
end
