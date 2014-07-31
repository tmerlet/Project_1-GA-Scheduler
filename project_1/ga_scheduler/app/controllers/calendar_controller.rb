class CalendarController < ApplicationController
  

  def index
    Event.all.each do |x|
      x.destroy
    end 


    if params[:id] == "all"
        @courses = Course.all
    else 
      @courses = []

      Location.find(params[:id].to_i).classrooms.each do |classroom|
          @courses << classroom.courses
      end 
      @courses.flatten!
    end
    # binding.pry

    @courses.each do |x|
      Event.create(name: x.name, start_at: x.start_course, end_at: x.end_course, course_id: x.id)
    end

    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.event_strips_for_month(@shown_month)
  end
end
