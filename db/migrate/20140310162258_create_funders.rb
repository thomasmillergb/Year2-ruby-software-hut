class CreateFunders < ActiveRecord::Migration
  def change






    create_table :funders do |t|
      t.string :name
      t.integer :type_of_funders_id
      t.string :phoneNumber
      t.string :email

      t.timestamps


    end

  end
end
