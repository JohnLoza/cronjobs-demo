class CreateScheduledJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :scheduled_jobs do |t|
      t.string :name

      t.timestamps
    end
  end
end
