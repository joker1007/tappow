require 'tapp/printer'
require 'ap'

module Tappow::Printer
  class LoggerAwesome < Tapp::Printer::Base
    def print(*args)
      Tappow.logger.send(Tappow.log_level, args[0].awesome_inspect)
    end
  end
end
