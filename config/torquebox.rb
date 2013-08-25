TorqueBox.configure do
  pool :web, :type => :shared

  options_for Backgroundable, :concurrency => 10

  queue '/queues/welcome_email' do
    processor SendWelcomeEmailProcessor do
      concurrency 2
    end
  end
end
