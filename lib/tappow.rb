require 'logger'
require 'tapp'

require 'tappow/object_extension'
require 'tapp/printer/logger_awesome'
require 'tapp/printer/logger_pretty'
require 'tapp/printer/logger_string'

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

Object.__send__ :include, Tappow::ObjectExtension
