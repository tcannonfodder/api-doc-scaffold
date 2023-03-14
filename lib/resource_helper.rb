require 'json'

module ResourceHelper
  def pretty_json_resource(name:, json_options: nil)
    JSON.pretty_generate(Resources.const_get(name.upcase))
  end

  def json_resource(name:, json_options: nil)
    JSON.generate(Resources.const_get(name.upcase))
  end

  def json_resource_markdown(name:, json_options: nil)
    return <<~Markdown
    ~~~json
    #{pretty_json_resource(name: name, json_options: json_options)}
    ~~~
    Markdown
  end
end