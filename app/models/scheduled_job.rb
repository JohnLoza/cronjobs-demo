class ScheduledJob < ApplicationRecord
  def ScheduledJob.create_from_schedule
    sj = ScheduledJob.create(name: "ScheduledJob at #{Time.now.to_i}")
    Rails.logger.info "--> Inserted a new ScheduledJob with ID: #{sj.id}"

    sj.persisted?
  end
end
