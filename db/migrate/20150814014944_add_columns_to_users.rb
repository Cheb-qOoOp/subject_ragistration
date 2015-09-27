class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name_kana, :string, null: false, default: ""
    add_column :users, :affiliation, :string, null: false, default: ""
    add_column :users, :tel, :string, null: false, default: ""
    add_column :users, :fax, :string, null: false, default: ""
  end
end
