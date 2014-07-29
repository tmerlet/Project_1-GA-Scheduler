class Format < ActiveRecord::Base
  attr_accessible :name

  has_many :programs
end
