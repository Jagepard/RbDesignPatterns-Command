=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

require "./Command"
require "./TurnOnCommand"
require "./TurnOffCommand"

class ToggleCommand < Command
  def initialize
    @toggle = 1
  end

  def execute
    command = (@toggle % 2) === 1 ? TurnOnCommand.new : TurnOffCommand.new
    command.execute
    @toggle += 1
  end
end
