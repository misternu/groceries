class CreateGroceries < ActiveRecord::Migration[5.1]
  def change
    create_table :groceries do |t|
      t.string :name
      t.boolean :checked

      t.timestamps
    end
  end
end
