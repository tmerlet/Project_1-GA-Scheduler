class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :name, :password, :password_confirmation, :role, :telephone_number

  validates :email, presence: true, uniqueness: true

end
