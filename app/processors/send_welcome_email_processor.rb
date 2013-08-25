class SendWelcomeEmailProcessor < TorqueBox::Messaging::MessageProcessor
  def on_message(body)
    puts "Sending Email to #{body[:name]} address #{body[:email]}"
    sleep 5
    puts "Email sent"
  end
end
