class CalendarController < ApplicationController
  

  def index

    Event.all.each do |x|
      x.destroy
    end

    Course.all.each do |x|
      Event.create(name: x.name, start_at: x.start_course, end_at: x.end_course, course_id: x.id)
    end

    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.event_strips_for_month(@shown_month)
  end
  
end
