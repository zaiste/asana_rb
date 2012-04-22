module AsanaRb
  class Base
    include HTTParty

    #debug_output $stdout

    format :json
    version = '1.0'
    base_uri "http://app.asana.com/api/#{version}"
    headers "Content-Type" => "application/json"

    def self.api_key(key)
      @@api_key = key

      @@auth = { 
        basic_auth: { username: @@api_key, password: '' }
      }
    end
  end
end
