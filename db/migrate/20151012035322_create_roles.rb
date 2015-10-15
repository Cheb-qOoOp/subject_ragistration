class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      # id = 0:admin, 1:reviewer, 2:member
      t.string :name
      t.integer :max_user_num, default: 0

      t.timestamps
    end
  end
end
