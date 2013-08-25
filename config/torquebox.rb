TorqueBox.configure do
  pool :web, :type => :shared

  options_for Backgroundable, :concurrency => 10

end
