class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integer, null: false, default: 2 #=> member
  end
end
