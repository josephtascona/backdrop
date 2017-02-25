class RemoveColumnCategoryFromImages < ActiveRecord::Migration[5.0]
  def up
    remove_column :images, :category
  end
  def down
    add_column :images, :category, :string
  end
end
