class AddUserAttributes < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_name, :string
  end

  def down
  end
end
