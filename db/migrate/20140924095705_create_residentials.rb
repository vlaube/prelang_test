class CreateResidentials < ActiveRecord::Migration
  def change
    create_table :residentials do |t|
      t.references :user, index: true
      t.integer :status
      t.string :contract
      t.references :product, index: true

      t.timestamps
    end
  end
end
