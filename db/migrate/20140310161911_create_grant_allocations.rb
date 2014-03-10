class CreateGrantAllocations < ActiveRecord::Migration
  def change
    create_table :grant_allocations do |t|
      t.belongs_to :grants
      t.belongs_to :users

      t.timestamps
    end
  end
end
