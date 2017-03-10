class SchedulesController < ApplicationController
  include CRUD

  private

  def obj_params
    params.require(:schedule).permit *%i(start_date end_date event description creator)
  end

  def obj
    collection.find params[:id]
  end

  def collection
    Schedule.all
  end

  def obj_class
    room.schedules
  end

  def room
    Room.find_by(tag: params[:schedule][:room_tag])
  end
end
