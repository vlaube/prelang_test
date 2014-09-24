class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_type
      t.string :name
      t.decimal :item_value
      t.references :residential, index: true

      t.timestamps
    end
  end
end
