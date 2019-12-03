class AddPictureToCouches < ActiveRecord::Migration[5.2]
  def change
    add_column :couches, :picture, :string
  end
end
