class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :seats
      t.integer :location_id

      t.timestamps
    end
  end
end
