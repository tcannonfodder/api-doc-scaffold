require 'uri'
require 'rack'

module EndpointURLHelper
  def endpoint_url(path:, params: nil)
    uri = URI(Pathname.new(@config[:endpoint_base_url]).join(path).to_s)
    uri.query = Rack::Utils.build_nested_query(params)

    return uri
  end
end