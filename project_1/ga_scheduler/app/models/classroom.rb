class Classroom < ActiveRecord::Base
  attr_accessible :location_id, :name, :seats

  has_many :courses
  belongs_to :location
  
end
