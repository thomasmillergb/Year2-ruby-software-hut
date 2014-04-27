class RemoveTdsateFromStudentships < ActiveRecord::Migration
  def change
	remove_column :studentships, :tdsate,   :date
	add_column :studentships, :tdate,   :date

  end
end
