class RoomSerializer < ActiveModel::Serializer
  attributes *%i(name tag schedule_for_day)

  def schedule_for_day
    date = scope[:params][:start_date].to_date
    object.schedules.where('start_date BETWEEN ? AND ?', date.beginning_of_day, date.end_of_day)
  end
end
