require 'debug'

require_relative 'endpoint_url_helper'
require_relative 'resource_helper'

use_helper EndpointURLHelper
use_helper ResourceHelper
use_helper Nanoc::Helpers::LinkTo
use_helper Nanoc::Helpers::Rendering