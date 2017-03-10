class AddRoomIdToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :room_id, :integer
  end
end
