class SolicitUser
  def initialize(options={})
    @message = options["message"] || "Hi There"
  end

  def run
    user = User.offset(rand(User.count)).first
    puts "Soliciting #{user.name} with message '#{@message}'" if user
  end
end
