GlassSdk.setup do |config|
  
  config.client_id = "your client_id"
  config.client_secret = "your client_secret"

  # your need google api scope
  config.scope = %w{
    https://www.googleapis.com/auth/glass.timeline
    https://www.googleapis.com/auth/userinfo.profile
  }

  # your need html templaet path
  config.template_path = "#{Rails.root}/lib/views"
end