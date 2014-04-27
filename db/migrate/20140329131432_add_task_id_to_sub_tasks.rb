class AddTaskIdToSubTasks < ActiveRecord::Migration
  def change
    add_column :sub_tasks, :task_id, :integer
  end
end
