Rails.application.config.before_initialize do
  system("whenever --update-crontab --set environment='development'")
end
