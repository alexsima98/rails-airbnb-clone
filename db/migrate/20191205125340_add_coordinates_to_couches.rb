class AddCoordinatesToCouches < ActiveRecord::Migration[5.2]
  def change
    add_column :couches, :latitude, :float
    add_column :couches, :longitude, :float
  end
end
