class AddArchiveToGrants < ActiveRecord::Migration
  def change
    add_column :grants, :archive, :boolean
  end
end
