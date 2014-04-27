class AddArchiveToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :archive, :boolean
  end
end
