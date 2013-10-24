module GlassSdk
  module API
    def self.included(base)
      base.extend ClassMethods
      base.instance_variable_set "@default_options", {}
      base.send :google_uri, "https://www.googleapis.com"
      base.send :attr_accessor, :default_options
    end

    module ClassMethods
      def default_options
        @default_options
      end

      def google_uri(value)
        default_options[:google_uri] = value
      end

      def base_uri(value)
        default_options[:base_uri] = value
      end

      def request_url(id=nil)
        if id.nil?
          default_options[:google_uri] + default_options[:base_uri]
        else
          default_options[:google_uri] + default_options[:base_uri] + "/" + id
        end
      end

      def index(headers={}, &block)
        RestClient.get(request_url, headers, &block)
      end

      def show(id=nil, headers={}, &block)
        RestClient.get(request_url(id), headers, &block)
      end

      def post(payload, headers={}, &block)
        RestClient.post(request_url, payload, headers, &block)
      end

      def put(id, payload, headers={}, &block)
        RestClient.put(request_url(id), payload, headers, &block)
      end

      def patch(id, payload, headers={}, &block)
        RestClient.put(request_url(id), payload, headers, &block)
      end

      def delete(id, headers={}, &block)
        RestClient.delete(request_url(id), headers, &block)
      end
    end

  end
end