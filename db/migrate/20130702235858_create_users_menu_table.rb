class CreateUsersMenuTable < ActiveRecord::Migration
  def up
    create_table :users_menus do |t|
      t.integer :user_id
      t.integer :menu_id
    end
  end

  def down
  end
end
