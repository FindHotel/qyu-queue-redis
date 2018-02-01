require 'aws-sdk'
require 'json'

module Qyu
  module Queue
    module Redis
      class Adapter < Qyu::Queue::Redis.interface
        TYPE = :redis

        def initialize(config)
          init_client(config)
        end

        def self.valid_config?(config)
         ConfigurationValidator.new(config).valid?
        end

        def enqueue_task(queue_name, task_id)
          # TODO
        end

        def acknowledge_message(queue_name, message_id)
          # TODO
        end

        private

        def get_or_create_queue(queue_name)
          # TODO
        end

        # noinspection RubyArgCount
        def init_client(config)
          Qyu.logger.debug "Initializing Redis client with configuration #{config}"
          # TODO
        end
      end
    end
  end
end

if defined?(Qyu::Config::MessageQueue)
  Qyu::Config::MessageQueue.register(Qyu::Queue::Redis::Adapter)
end

if defined?(Qyu::Factory::MessageQueue)
  Qyu::Factory::MessageQueue.register(Qyu::Queue::Redis::Adapter)
end
