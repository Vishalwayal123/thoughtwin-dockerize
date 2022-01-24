class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :account_detail 
  has_many :under_team_leaders
  has_one :blog
  accepts_nested_attributes_for :account_detail, update_only: true
  mount_uploader :profile_image, UserUploader
  

  def full_name
    "#{first_name}  #{last_name}"
  end
end
