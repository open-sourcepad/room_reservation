class Schedule < ActiveRecord::Base
  belongs_to :room

  before_save :validate_schedule


  def validate_schedule
    schedules = self.room.schedules.where.not(id: nil).where('start_date BETWEEN ? AND ?', self.start_date.beginning_of_day, self.start_date.end_of_day)
    schedules.each do |schedule|
      if schedule.start_date.between?(self.start_date, self.end_date) || schedule.end_date.between?(self.start_date, self.end_date) || self.start_date.between?(schedule.start_date, schedule.end_date) || self.end_date.between?(schedule.start_date, schedule.end_date)
        self.errors.add(:Time, "has conflict with other schedules.")
        return false
      end
    end

    return true
  end
end

