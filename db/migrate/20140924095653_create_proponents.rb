class CreateProponents < ActiveRecord::Migration
  def change
    create_table :proponents do |t|
      t.string :name
      t.string :email
      t.string :document
      t.boolean :proponent_type
      t.string :phone
      t.string :mobile
      t.string :zipcode
      t.string :street
      t.string :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :state
      t.references :residential, index: true

      t.timestamps
    end
  end
end
