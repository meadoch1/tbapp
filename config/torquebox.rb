TorqueBox.configure do
  pool :web, :type => :shared

  options_for Backgroundable, :concurrency => 10

  queue '/queues/welcome_email' do
    processor SendWelcomeEmailProcessor do
      concurrency 2
    end
  end

  job SolicitUser do
    cron "0 0/1 * 1/1 * ? *"
    config do
      message "You're wonderful"
    end
  end

end
