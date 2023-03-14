require 'json'

module ResourceHelper
  def pretty_json_resource(name:, json_options: nil)
    JSON.pretty_generate(Resources.const_get(name.upcase))
  end

  def json_resource(name:, json_options: nil)
    JSON.generate(Resources.const_get(name.upcase))
  end
end