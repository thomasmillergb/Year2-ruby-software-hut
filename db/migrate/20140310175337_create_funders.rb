class CreateFunders < ActiveRecord::Migration
  def change
    create_table :funders do |t|
      t.string :name
      t.integer :type_id
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
