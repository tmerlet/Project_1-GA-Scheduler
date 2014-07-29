class Program < ActiveRecord::Base
  attr_accessible :description, :format_id, :image, :name, :published, :topic_id, :program_image
  mount_uploader :program_image, ProgramImageUploader

  has_many :courses
  belongs_to :topic
  belongs_to :format
end
  