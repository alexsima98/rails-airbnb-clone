class AddTitleToCouches < ActiveRecord::Migration[5.2]
  def change
    add_column :couches, :title, :string
  end
end
