class CreateProjectcats < ActiveRecord::Migration
  def change
    create_table :projectcats do |t|
      t.string :name

      t.timestamps
    end
  end
end
