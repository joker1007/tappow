require 'spec_helper'

describe Tappow do
  let(:io) { StringIO.new }

  around do |ex|
    current_logger = Tappow.logger
    Tappow.logger = Logger.new(io)
    ex.run
    Tappow.logger = current_logger
  end

  describe "Object#tappow" do
    let(:tappow) { "foo".tappow }

    it {
      tappow
      io.rewind
      expect(io.read).to match(/DEBUG.*"foo"/)
    }
  end

  describe "Tapp::Printer extension" do
    let(:tapp) { "bar".tapp(:logger_pretty) }

    it {
      tapp
      io.rewind
      expect(io.read).to match(/DEBUG.*"bar"/)
    }
  end
end
