require 'rails/generators'

module GlassSdk
  
  class InstallGenerator < Rails::Generators::Base
    
    source_root File.expand_path("../templates", __FILE__)

    def install
      
      copy_file "glass_sdk.rb", "config/initializers/glass_sdk.rb"
      empty_directory "lib/views"

      say "all is ok"
    end
  end
  
end
