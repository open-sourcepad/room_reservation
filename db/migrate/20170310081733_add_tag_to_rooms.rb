class AddTagToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :tag, :string
  end
end
