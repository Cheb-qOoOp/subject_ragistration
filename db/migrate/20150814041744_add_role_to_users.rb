class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, null: false, default: 2 #= member
  end
end
