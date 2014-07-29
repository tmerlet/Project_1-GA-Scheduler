class CreateCoursesProducers < ActiveRecord::Migration
  
  def change
    create_table :courses_producers, id: false do |t|
          t.integer :course_id
          t.integer :producer_id
    end
  end

end
