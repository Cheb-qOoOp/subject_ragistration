class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment, null: false, default: ""
      t.integer :parent_id, default: -1
      t.integer :subject_id
      t.integer :user_id

      t.timestamps
    end
  end
end
