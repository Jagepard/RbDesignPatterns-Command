=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

class Device
    def initialize
        @commands = {}
    end

    def execute(command_name)
        unless @commands.has_key?(command_name)
            raise "Command does not exist in the registry"
        end

        @commands[command_name].execute
    end

    def set_command(command_name, command)
        if @commands.has_key?(command_name)
            raise "Command already exists"
        end

        @commands[command_name] = command
    end
end
