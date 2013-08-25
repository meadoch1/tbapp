class User < ActiveRecord::Base
  attr_accessible :email, :name
  always_background :send_welcome

  def send_welcome
    puts "Sending Email"
    sleep 5
    puts "Email sent"
  end

end
