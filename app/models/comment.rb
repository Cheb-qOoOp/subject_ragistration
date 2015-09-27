class Comment < ActiveRecord::Base
  belongs_to :subject_of_speech
  default_scope -> { order('created_at DESC') }
  validates :subject_id, presence: true
end
