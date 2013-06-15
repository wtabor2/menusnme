class CreateCategoriesMenusTable < ActiveRecord::Migration
  def up
    create_table :categories_menus do |t|
      t.integer :category_id
      t.integer :menu_id
    end
  end

  def down
  end
end
