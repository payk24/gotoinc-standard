# frozen_string_literal: true

module Gotoinc
  module Standard
    module Version
      STRING = '1.0.2'

      MSG = '%<version>s (using Parser %<parser_version>s, running on ' \
            '%<ruby_engine>s %<ruby_version>s %<ruby_platform>s)'

      def self.version(debug = false)
        if debug
          format(
            MSG, version: STRING, parser_version: Parser::VERSION,
                 ruby_engine: RUBY_ENGINE, ruby_version: RUBY_VERSION,
                 ruby_platform: RUBY_PLATFORM
          )
        else
          STRING
        end
      end
    end
  end
end
