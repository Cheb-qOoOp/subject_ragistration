class CreateSubjectOfSpeeches < ActiveRecord::Migration
  def change
    create_table :subject_of_speeches do |t|
      t.string :title
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
