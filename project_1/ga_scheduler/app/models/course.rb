class Course < ActiveRecord::Base
  attr_accessible :boolean, :end_course, :name, :price, :published, :start_course, :weekend, :program_id, :classroom_id

  has_and_belongs_to_many :students
  has_and_belongs_to_many :instructors
  has_and_belongs_to_many :producers
  belongs_to :program
  belongs_to :classroom

end
