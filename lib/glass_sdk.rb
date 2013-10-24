require 'glass_sdk/hash_to_html'

module GlassSdk

  autoload :OAuth, 'glass_sdk/oauth'
  autoload :Timeline, 'glass_sdk/timeline'
  autoload :API, 'glass_sdk/base'

  def self.setup
    yield self
  end

  class << self
    attr_accessor :client_id, :client_secret, :scope, :template_path, :redirect_uri
  end

end
