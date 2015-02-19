module Tappow
  module TappExtension
    def instance(name)
      case name
      when :logger_pretty
        Tappow::Printer::LoggerPretty.instance
      when :logger_awesome
        Tappow::Printer::LoggerAwesome.instance
      when :logger_string
        Tappow::Printer::LoggerString.instance
      else
        super
      end
    end
  end
end
