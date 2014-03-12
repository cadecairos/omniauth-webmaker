require "omniauth"
require "omniauth-webmaker"
require "faraday"
require "multi_json"

module OmniAuth
  module Strategies
    class Webmaker
      include OmniAuth::Strategy

      option :login_server_url, "http://localhost:3000/api/user/authenticate"
      option :name, "webmaker"
      option :client_options, {}

      info do
        {
          :email => verify_webmaker['user']['email']
        }
      end

      def verify_webmaker
        req_body = MultiJson.decode request.body
        conn = Faraday.new( options[:client_options].update(:url => options["login_server_url"]) )
        response = conn.post( '',
          :assertion => req_body["assertion"],
          :audience => req_body["audience"]
        )

        resp = MultiJson.decode(response.body)
      end
    end
  end
end
