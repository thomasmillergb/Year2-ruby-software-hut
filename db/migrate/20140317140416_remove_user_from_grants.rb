class RemoveUserFromGrants < ActiveRecord::Migration
  def change
    remove_column :grants, :user_id, :integer
    add_column :grants, :awarded_to, :string
  end
end
