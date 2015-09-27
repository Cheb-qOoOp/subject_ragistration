class AddColumnsToSubjectOfSpeeches < ActiveRecord::Migration
  def change
    add_column :subject_of_speeches, :sub_title, :string, null: false, default: ""
    add_column :subject_of_speeches, :costar, :text, null: false, default: ""
    add_column :subject_of_speeches, :category, :string, null: false, default: ""
    add_column :subject_of_speeches, :keywords, :string, null: false, default: ""
    add_column :subject_of_speeches, :presentation_style, :string, null: false, default: ""
    add_column :subject_of_speeches, :status, :string, null: false, default: ""
    add_column :subject_of_speeches, :next_id, :integer, default: -1
    add_column :subject_of_speeches, :prev_id, :integer, default: -1

    add_index :subject_of_speeches, [:user_id, :created_at]
  end
end
