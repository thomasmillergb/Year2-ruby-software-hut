class AddFdateToStudentship < ActiveRecord::Migration
  def change
    add_column :studentships, :fdate, :date

    add_column :studentships, :sdate, :date
    add_column :studentships, :tdsate, :date
  end
end
