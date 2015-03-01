require 'tapp/printer'

module Tapp::Printer
  class LoggerAwesome < Base
    def print(*args)
      require 'ap'

      self.class.class_eval do
        remove_method :print

        def print(*args)
          Tappow.logger.send(Tappow.log_level, args[0].awesome_inspect)
        end
      end

      print(*args)
    end
  end

  register :logger_awesome, LoggerAwesome
end
