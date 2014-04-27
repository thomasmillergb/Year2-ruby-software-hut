class RemoveEnddateFromStudentships < ActiveRecord::Migration
  def change
    remove_column :studentships, :enddate, :string
    
    add_column :studentships, :enddate, :date
  end
end
