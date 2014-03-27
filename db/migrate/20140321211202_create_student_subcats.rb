class CreateStudentSubcats < ActiveRecord::Migration
  def change
    create_table :student_subcats do |t|
      t.string :name

      t.timestamps
    end
  end
end
