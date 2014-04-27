class CreateTaskComments < ActiveRecord::Migration
  def change
    create_table :task_comments do |t|
      t.string :name
      t.string :comment
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
