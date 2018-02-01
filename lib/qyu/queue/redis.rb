require_relative "./redis/version"

module Qyu
  module Queue
    module Redis
      autoload :Adapter,                'qyu/queue/redis/adapter'
      autoload :ConfigurationValidator, 'qyu/queue/redis/configuration_validator'
      autoload :Logger,                 'qyu/queue/redis/logger'

      class << self
        def interface
          defined?(Qyu::MessageQueue::Base) ? Qyu::MessageQueue::Base : Object
        end
      end
    end
  end
end
