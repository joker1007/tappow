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
    describe "logger_pretty" do
      let(:tappow) { "foo".tappow }

      it {
        tappow
        io.rewind
        expect(io.read).to match(/DEBUG.*"foo"/)
      }
    end

    describe "logger_awesome" do
      let(:tappow) { "foo".tappow(:logger_awesome) }

      it {
        tappow
        io.rewind
        expect(io.read).to match(/DEBUG.*33m\"foo\"/)
      }
    end
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
