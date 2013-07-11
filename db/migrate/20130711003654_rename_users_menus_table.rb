class RenameUsersMenusTable < ActiveRecord::Migration
  def self.up
    rename_table :users_menus, :menus_users
  end

  def self.down
    rename_table :menus_users, :users_menus
  end
end
