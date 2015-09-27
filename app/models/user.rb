class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :confirmable,
         :validatable

  # validates :username, presence: true, length: { maximum: 50 }
  ROLE = {admin: "admin",
          reviewer: "reviewer",
          member: "member"}

  has_many :subject_of_speeches

  validates :email, presence: true

end
