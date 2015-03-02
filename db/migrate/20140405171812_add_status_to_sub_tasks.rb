class AddStatusToSubTasks < ActiveRecord::Migration
  def change
    add_column :sub_tasks, :status, :integer
  end
end
