json.extract! scheduled_job, :id, :name, :created_at, :updated_at
json.url scheduled_job_url(scheduled_job, format: :json)
