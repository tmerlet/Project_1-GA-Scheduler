class Student < ActiveRecord::Base
  attr_accessible :name, :paid, :phone_number

  has_and_belongs_to_many :courses


end
