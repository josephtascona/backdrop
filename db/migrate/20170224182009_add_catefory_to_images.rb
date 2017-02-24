class AddCateforyToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :category, :string
  end
end
