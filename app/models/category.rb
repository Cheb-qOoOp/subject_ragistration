class Category < ActiveRecord::Base
  has_many :subject_of_speeches
end
