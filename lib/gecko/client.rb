module Gecko
  class Client < Lizard::Client
    record :Account
    record :Currency

    record :Address
    record :Company

    record :Fulfillment
    record :FulfillmentLineItem
    record :Order
    record :OrderLineItem

    record :Product
    record :Variant

  private
    def setup_oauth_client(client_id, client_secret, options)
      @oauth_client = OAuth2::Client.new(client_id, client_secret, defaults.merge(options))
    end

    def default_oauth_options
      {
        site:          'https://api.tradegecko.com',
        authorize_url: 'https://go.tradegecko.com/oauth/authorize',
        connection_opts: {
          headers:     default_headers
        }
      }
    end

    def default_headers
      {
        'User-Agent' => [ "Gecko/#{Gecko::VERSION}",
                          "OAuth2/#{OAuth2::Version.to_s}",
                          "Faraday/#{Faraday::VERSION}",
                          "Ruby/#{RUBY_VERSION}"].join(' ')
      }
    end
  end
end
