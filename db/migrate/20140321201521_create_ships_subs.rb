class CreateShipsSubs < ActiveRecord::Migration
  def change
    create_table :ships_subs do |t|
      t.string :name

      t.timestamps
    end
  end
end
