class AddGrantssubToGrants < ActiveRecord::Migration
  def change
    add_column :grants, :grantssub, :integer

    add_column :grants, :finalreport, :date
  end
end
