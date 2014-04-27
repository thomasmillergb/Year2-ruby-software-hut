class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.float :gpa

      t.timestamps
    end
  end
end
