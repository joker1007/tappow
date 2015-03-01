require 'tapp/printer'

module Tapp::Printer
  class LoggerString < Base
    def print(*args)
      Tappow.logger.send(Tappow.log_level, args[0].to_s)
    end
  end

  register :logger_string, LoggerString
end
