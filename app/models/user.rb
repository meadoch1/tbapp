class User < ActiveRecord::Base
  attr_accessible :email, :name
#  always_background :send_welcome

  def send_welcome
    queue = TorqueBox.fetch('/queues/welcome_email')
    queue.publish( { email: email, name: name })
  end
end
