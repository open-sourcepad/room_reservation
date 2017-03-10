class Room < ActiveRecord::Base
  has_many :schedules
end

