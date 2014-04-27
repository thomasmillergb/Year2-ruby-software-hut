class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :grant_id
      t.integer :studentship_id

      t.timestamps
    end
  end
end
