class AddAuthLevelToUser < ActiveRecord::Migration
  def change
    add_column :users, :auth_level, :Integer
  end
end
