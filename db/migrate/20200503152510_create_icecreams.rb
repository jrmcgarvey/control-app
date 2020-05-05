class CreateIcecreams < ActiveRecord::Migration[5.2]
  def change
    create_table :icecreams do |t|
      t.string :name
      t.integer :count
      t.string :flavor
      t.string :size
      t.boolean :new_account

      t.timestamps
    end
  end
end
