require 'tapp/printer'
require 'pp'

module Tappow::Printer
  class LoggerPretty < Tapp::Printer::Base
    def print(*args)
      Tappow.logger.send(Tappow.log_level, args[0].pretty_inspect)
    end
  end
end
