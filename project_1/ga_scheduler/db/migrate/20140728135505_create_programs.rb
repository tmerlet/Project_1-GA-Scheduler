class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :published
      t.integer :topic_id
      t.integer :format_id

      t.timestamps
    end
  end
end
