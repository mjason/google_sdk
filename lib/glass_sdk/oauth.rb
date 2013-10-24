# coding: utf-8

##
# google glass api 基础类
module GlassSdk

  # 用户认证基类
  class OAuth

    class << self
      @@base_uri = "https://accounts.google.com"
      @@redirect_uri = GlassSdk.redirect_uri
      @@access_type = 'offline'
      @@approval_prompt = 'force'

      @@client_id = GlassSdk.client_id
      @@client_secret = GlassSdk.client_secret
      @@scope = GlassSdk.scope
      
      # 获取用户登录的url
      def login_url
        params = []
        {
          response_type: 'code',
          client_id: @@client_id,
          redirect_uri: @@redirect_uri,
          scope: @@scope.join("+"),
          access_type: @@access_type,
          approval_prompt: @@approval_prompt
        }.each do |key, value|
          params << "#{key}=#{value}"
        end
        return "#{@@base_uri}/o/oauth2/auth?#{params.join("&")}"      
      end

      # 根据code 换取token
      def user_token(code)
        RestClient.post "#{@@base_uri}/o/oauth2/token", {
          code: code,
          client_id: @@client_id,
          client_secret: @@client_secret,
          redirect_uri: @@redirect_uri,
          grant_type: 'authorization_code'
        }
      end
    end

  end
end