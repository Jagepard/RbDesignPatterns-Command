=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

require "./Command"

class TurnOffCommand < Command
  def execute
    puts("The Light turns off\n")
  end
end
