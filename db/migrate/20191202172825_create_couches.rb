class CreateCouches < ActiveRecord::Migration[5.2]
  def change
    create_table :couches do |t|
      t.string :address
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
