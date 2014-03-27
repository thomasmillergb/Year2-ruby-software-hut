class CreateStudentships < ActiveRecord::Migration
  def change
    create_table :studentships do |t|
      t.integer :student_subcat_id
      t.string :code
      t.date :startdate
      t.string :enddate
      t.boolean :fire
      t.boolean :screenttest
      t.boolean :training
      t.boolean :firestatus
      t.boolean :screenstatus
      t.boolean :trainstatus
      t.boolean :m12
      t.date :m12date
      t.boolean :m24
      t.date :m24date
      t.boolean :m36
      t.date :m36
      t.boolean :complete

      t.timestamps
    end
  end
end
