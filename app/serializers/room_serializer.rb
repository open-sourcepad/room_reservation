class RoomSerializer < ActiveModel::Serializer
  attributes *%i(name tag schedule_for_day)

  def schedule_for_day
    puts "date param: #{scope[:params][:start_date]}"
    object.schedules.where('start_date BETWEEN ? AND ?', scope[:params][:start_date].beginning_of_day, scope[:params][:start_date].end_of_day)
  end
end
