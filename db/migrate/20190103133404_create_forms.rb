class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.integer :name
      t.string :radio
      t.string :charge
      t.text :item
      t.text :who
      t.text :content
      t.text :why

      t.timestamps
    end
  end
end
