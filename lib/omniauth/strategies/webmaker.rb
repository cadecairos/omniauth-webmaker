require "omniauth"
require "omniauth-webmaker"
require "faraday"
require "multi_json"

module OmniAuth
  module Strategies
    class Webmaker
      include OmniAuth::Strategy

      class WebmakerError < StandardError
        attr_accessor :error

        def initialize(error)
          self.error = error
        end

        def message
          error
        end
      end

      option :login_server_url, "http://localhost:3000/api/user/authenticate"
      option :name, "webmaker"
      option :client_options, {}

      info do
        {
          :email => verify_webmaker
        }
      end

      def callback_phase
        super
      rescue WebmakerError => e
        fail! e.message, e
      end

      def verify_webmaker
        req_body = MultiJson.decode request.body
        conn = Faraday.new( options[:client_options].update(:url => options["login_server_url"]) )
        response = conn.post( '',
          :assertion => req_body["assertion"],
          :audience => req_body["audience"]
        )

        resp_body = MultiJson.decode(response.body)

        if resp_body.has_key? "user"
          resp_body["user"]["email"]
        elsif resp_body.has_key? "error"
          raise WebmakerError, "Error Logging In"
        elsif resp_body.has_key? "email"
          raise WebmakerError, "You Must <a href=\\\"https://webmaker.org\\\"> create a Webmaker account</a> to log in"
        else
          raise WebmakerError, "Unknown Error"
        end
      end
    end
  end
end
