class CreateShipssubs < ActiveRecord::Migration
  def change
    create_table :shipssubs do |t|
      t.string :name

      t.timestamps
    end
  end
end
