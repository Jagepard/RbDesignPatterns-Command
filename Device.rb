=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

class Device
    @@commands = {}

    def execute(commandName)
        if !@@commands.has_key?(commandName)
            raise "Command does not exist in the registry"
        end

        @@commands[commandName].execute()
    end

    def setCommand(commandName, command)
        if @@commands.has_key?(commandName)
            raise "Command already exists"
        end

        @@commands[commandName] = command
    end
end
