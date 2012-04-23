require 'asana_rb/base'

module AsanaRb
  module Config
    attr_accessor :api_key

    def configure
      yield self

      Base.api_key = self.api_key
    end

  end
end
