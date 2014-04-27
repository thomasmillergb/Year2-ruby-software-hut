class AddArchiveToStudentships < ActiveRecord::Migration
  def change
    add_column :studentships, :archive, :boolean
  end
end
