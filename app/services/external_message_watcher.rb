class ExternalMessageWatcher
  def initialize(opts={})
    @done = false
  end

  def start
    @thread = Thread.new do
      begin
        puts "We got a message!" if rand > 0.75
        sleep 10
      end until @done
    end
  end

  def stop
    @done = true
    @thread.join
  end
end
