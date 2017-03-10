class RoomSerializer < ActiveModel::Serializer
  attributes *%i(name tag schedule_for_day)

  def schedule_for_day
    object.schedules(start_date: scope[:params][:date])
  end
end
