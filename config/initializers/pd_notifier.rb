require "pagerduty"
module ExceptionNotifier
  class PdNotifier
    def initialize(options)
      @pagerduty = Pagerduty.new("0bdcfdacf1b144d7822dfdfa5ed0ab1e")
      # do something with the options...
    end

    def call(exception, options={})
      @pagerduty.trigger(exception.message, details: { backtrace: exception.backtrace })
    end
  end
end