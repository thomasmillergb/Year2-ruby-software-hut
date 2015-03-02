class RemoveProjectIdFromProjectComments < ActiveRecord::Migration
  def change
     remove_column :project_comments,  :project_id
     add_column :project_comments, :project_id, :integer
  end
end
