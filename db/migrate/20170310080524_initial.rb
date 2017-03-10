class Initial < ActiveRecord::Migration
  def change
    create_table(:rooms) do |t|
      t.string :name
      t.timestamps
    end

    create_table(:schedules) do |t|
      t.string :event
      t.datetime :start_date
      t.datetime :end_date
      t.string :description
      t.string :creator
    end
  end
end
