module Qyu
  module Queue
    module Redis
      class ConfigurationValidator
        attr_reader :errors

        def initialize(config)
          @config = config
          @errors = []
        end

        def valid?
          true
        end

        def validate
          validate_redis_url
        end

        private

        def validate_redis_url
          # TODO
        end
      end
    end
  end
end
