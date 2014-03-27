class AddCodeToGrants < ActiveRecord::Migration
  def change
    add_column :grants, :code, :string
  end
end
