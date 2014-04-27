class RemoveM36FromStudentships < ActiveRecord::Migration
  def change
    remove_column :studentships, :m36, :date
    add_column :studentships, :m36, :boolean
    add_column :studentships, :m36date, :date
   
  end
end
