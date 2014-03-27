class AddGrantsubToGrants < ActiveRecord::Migration
  def change
    remove_column :grants, :grantssub
    add_column :grants, :grantsub_id, :integer
  end
end
