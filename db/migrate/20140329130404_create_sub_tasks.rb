class CreateSubTasks < ActiveRecord::Migration
  def change
    create_table :sub_tasks do |t|
      t.string :name
      t.string :description
      t.date :enddate

      t.timestamps
    end
  end
end
