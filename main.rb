=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

require "./Lamp"
require "./TurnOnCommand"
require "./TurnOffCommand"
require "./ToggleCommand"

device = Lamp.new

begin
    device.set_command("on", TurnOnCommand.new)
    device.set_command("off", TurnOffCommand.new)
    device.set_command("toggle", ToggleCommand.new)
    device.execute("on")
    device.execute("off")
    device.execute("toggle")
    device.execute("toggle")
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
end
