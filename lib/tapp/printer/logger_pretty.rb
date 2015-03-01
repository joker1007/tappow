require 'tapp/printer'

module Tapp::Printer
  class LoggerPretty < Base
    def print(*args)
      require 'pp'

      self.class.class_eval do
        remove_method :print

        def print(*args)
          Tappow.logger.send(Tappow.log_level, args[0].pretty_inspect)
        end
      end

      print(*args)
    end
  end

  register :logger_pretty, LoggerPretty
end
