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
  enum role: {admin: 0, reviewer: 1, member: 2}

  belongs_to :roles
  has_many :subject_of_speeches, dependent: :destroy

  validates :email, presence: true

end
