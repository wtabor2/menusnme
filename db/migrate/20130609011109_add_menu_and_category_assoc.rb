class AddMenuAndCategoryAssoc < ActiveRecord::Migration
  def up
    add_column :categories, :menu_id, :integer
    add_index :categories, :name
  end

  def down
  end
end
