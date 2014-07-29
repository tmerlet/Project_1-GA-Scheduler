class AddProgramImageToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :program_image, :string
  end
end
