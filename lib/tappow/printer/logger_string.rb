require 'tapp/printer'

module Tappow::Printer
  class LoggerString < Tapp::Printer::Base
    def print(*args)
      Tappow.logger.send(Tappow.log_level, args[0].to_s)
    end
  end
end
