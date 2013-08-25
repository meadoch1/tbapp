class User < ActiveRecord::Base
  attr_accessible :email, :name

  def send_welcome
    puts "Sending Email"
    sleep 5
    puts "Email sent"
  end

end
