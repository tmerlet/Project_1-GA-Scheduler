class Event < ActiveRecord::Base
  attr_accessible :name, :start_at, :end_at, :course_id
  has_event_calendar
end
