class Producer < ActiveRecord::Base
  attr_accessible :name, :phone_number

  has_and_belongs_to_many :courses

end
