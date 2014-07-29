class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :price
      t.datetime :start_course
      t.datetime :end_course
      t.boolean :weekend
      t.boolean :published
      t.integer :program_id
      t.integer :classroom_id

      t.timestamps
    end
  end
end
