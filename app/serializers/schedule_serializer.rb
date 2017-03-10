class ScheduleSerializer < ActiveModel::Serializer
  attributes *%i(start_date end_date event creator room_tag description)

  def room_tag
    object.room.tag
  end
end
