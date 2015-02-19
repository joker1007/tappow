module Tappow
  module ObjectExtension
    def tappow(printer = Tappow.default_printer, &block)
      tapp printer, &block
    end
  end
end
