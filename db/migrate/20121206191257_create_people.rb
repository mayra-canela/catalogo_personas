class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
