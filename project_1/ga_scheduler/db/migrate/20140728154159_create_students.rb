class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :phone_number
      t.boolean :paid

      t.timestamps
    end
  end
end
