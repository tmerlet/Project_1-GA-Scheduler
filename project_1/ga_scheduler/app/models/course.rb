class Course < ActiveRecord::Base
  attr_accessible :boolean, :end_course, :name, :price, :published, :start_course, :weekend, :program_id, :classroom_id, :producer_ids, :student_ids, :instructor_ids


    has_and_belongs_to_many :students, class_name: "User", conditions: [ "role=?", "student"]
    has_and_belongs_to_many :instructors, class_name: "User", conditions: [ "role=?", "instructor"]
    has_and_belongs_to_many :producers, class_name: "User", conditions: [ "role=?", "producer"]
    belongs_to :program
    belongs_to :classroom

end
