class SubjectOfSpeech < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true

  # 演題を削除したら、紐づいていた指摘事項をすべて削除する
  has_many :comments, dependent: :destroy, :foreign_key => "subject_id"
  belongs_to :category
end
