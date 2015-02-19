require 'tappow/printer'
require 'tappow/tapp_extension'
require 'tappow/object_extension'

require 'logger'
require 'tapp'

module Tappow
  class << self
    attr_writer :logger, :log_level, :default_printer
    def logger
      @logger ||= Logger.new($stdout)
    end

    def log_level
      @log_level ||= :debug
    end

    def default_printer
      @default_printer ||= :logger_pretty
    end
  end
end

Tapp::Printer.singleton_class.prepend(Tappow::TappExtension)
Object.__send__ :include, Tappow::ObjectExtension
