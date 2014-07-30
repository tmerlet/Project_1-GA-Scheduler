class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :name, :password, :password_confirmation, :role, :phone_number, :paid

  validates :email, presence: true, uniqueness: true

  has_and_belongs_to_many :courses

end
