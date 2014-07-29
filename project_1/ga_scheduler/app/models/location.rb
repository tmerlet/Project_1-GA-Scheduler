class Location < ActiveRecord::Base
  attr_accessible :country, :name

  has_many :classrooms
end
