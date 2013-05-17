class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :rest_name
      t.text :description
      t.string :food_categories
      t.string :image_url

      t.timestamps
    end
  end
end
