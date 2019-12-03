class AddPhotoToCouches < ActiveRecord::Migration[5.2]
  def change
    add_column :couches, :photo, :string
  end
end
