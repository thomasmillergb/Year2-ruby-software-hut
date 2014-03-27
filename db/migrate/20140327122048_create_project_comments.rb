class CreateProjectComments < ActiveRecord::Migration
  def change
    create_table :project_comments do |t|
      t.string :name
      t.string :comment
      t.integer :user_id
      t.string :project_id

      t.timestamps
    end
  end
end
