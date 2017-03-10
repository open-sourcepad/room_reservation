class RoomSerializer < ActiveModel::Serializer
  attributes *%i(name tag schedule_for_day)

  def schedule_for_day
    puts "date param: #{scope[:params][:date]}"
    object.schedules.where('start_date BETWEEN ? AND ?', scope[:params][:date].beginning_of_day, scope[:params][:date].end_of_day)
  end
end
