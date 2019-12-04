class AddDescriptionToCouches < ActiveRecord::Migration[5.2]
  def change
    add_column :couches, :description, :string
  end
end
