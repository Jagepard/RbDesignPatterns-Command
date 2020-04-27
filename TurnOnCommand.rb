=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

require "./Command"

class TurnOnCommand < Command
    def execute
        puts("The Light turns on\n")
    end
end
