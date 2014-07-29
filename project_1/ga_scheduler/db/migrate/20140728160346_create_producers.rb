class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
