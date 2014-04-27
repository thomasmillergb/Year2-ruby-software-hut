class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :startdate
      t.date :enddate
      t.integer :status

      t.timestamps
    end
  end
end
