class AddStatusToStudentships < ActiveRecord::Migration
  def change
    add_column :studentships, :status, :integer
  end
end
