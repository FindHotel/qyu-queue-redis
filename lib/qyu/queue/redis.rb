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

Qyu::Config::QueueConfig.register(Qyu::Queue::Redis::Adapter) if defined?(Qyu::Config::QueueConfig)
Qyu::Factory::QueueFactory.register(Qyu::Queue::Redis::Adapter) if defined?(Qyu::Factory::QueueFactory)
