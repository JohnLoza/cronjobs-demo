Rails.application.config.before_initialize do
  system("whenever --update-crontab --set environment='#{Rails.env}'")
  system('mkdir -p ~/tmp/log')
  unless system('ls ~/tmp/log/cronjobs.log')
    system('touch ~/tmp/log/cronjobs.log')
  end
end
